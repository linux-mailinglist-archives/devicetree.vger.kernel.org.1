Return-Path: <devicetree+bounces-269212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGezKMWOoWkruQQAu9opvQ
	(envelope-from <devicetree+bounces-269212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:32:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAF71B7166
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4E1433005981
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02BE530C343;
	Fri, 27 Feb 2026 12:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="wjCa6sEV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DE02E0B58
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772195520; cv=none; b=Oysd2FGmcvnNODaCdCy3wesNWN488YrDQpj3UQI9sAcmS3JzFbs7mdiqFnc/qDiBT264VOXu5SQcy4daNsyEHt1IariV/DzLvPek3MIdQ9/jgRsu7aQq23Ttt0BNSeUhh7F84RKSN+xsXBfunlmXNGZoMcEY9xekvIHs2wAt4y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772195520; c=relaxed/simple;
	bh=AQoCa8HSU57FVEnyfNGlpLBzlqZ7NfoICy006X5CqEk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=maTSp8gAZ4Q4x/Fyt3C+WLT9YicreivjZQRN4fNvLGunGyNI/ECk02dj09ZC6K0UN5kZWZkBoHytNiCxZ5PmhucUvMl1lch5YY7VCmF9uV15L0l44iUFgjUQp/VcU0pXdHv/V00OQkjF2nLhZ4w5azIbQEYZXAcy6h6cvLNN/ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=wjCa6sEV; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-65f71ed7c6cso3612170a12.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772195518; x=1772800318; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLaJkgzjmvXyubyZDm6S8qBRFRZ4imol4EtJej/eQAw=;
        b=wjCa6sEVA0DzJYkZKpYj5zilHglm+TFvsU+UVdt/dRdH4zW2fdjOpI2EojKvxcjyAJ
         GE2wRGtrzVre42HV6UtoibTS6U1pWOjfpKz5jbFO+hdTJsprMFUxzq5CYGpJqhwytoSu
         Y/AzI5P+nY/nd4cB0dlHnlIXcVKwvUybVVwjddRthstmjUHatx1UQPhzZgKSzcD/ZVHM
         S+3TA2y423mtTY87kcU2N+5oXILrmko0eeRjrLUPq9SYkq7ZjfJMo935CEsefjTxK1Ca
         8rZvHFRym1D8i1YUFlhYRItEP9brG+Jn8mpXGJE7nH95jFDFlDSnOxxG8WoWCEw284vc
         P7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772195518; x=1772800318;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JLaJkgzjmvXyubyZDm6S8qBRFRZ4imol4EtJej/eQAw=;
        b=VJaa0qAeYaqWeEtFWo+KOht+zgSvDPOgVUcaY10DsO7kw37OkaxxJpSprTRs01On1r
         SQo6YTbx8CgOuaMk677yldEW0U1oBvjKjdfOkk/rS8pYKvHZGtbivTJh1BM9n/eR8MQG
         i8rx82TuZEWKr4pWTExLGzLKQIAB9ebbto7wtZAFii0DFW54icd1pyPFjf96b8rGSzIu
         NX6efKG4LuCQxL7rGkSSVFxcnwcwy2Lggxh3PUUW5eJWT+xo21A3toac4klb88B2VU1n
         0BANwdbr5yFFA4WENq3MFIWZg1ELhqvfjdknLzqZ9fduw3yJUDh8OnzrK4MpiNHVHriu
         dawA==
X-Forwarded-Encrypted: i=1; AJvYcCWp5l31wbJE6TtdLUS5EwbGzt3QbTtbOmhgBo3Dwr9Sb/Tx9K1zdpZIc3ydW+zxoTKJ2JZAcxEqUscc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8/xBteq8GkVZo0h9VJ2h9fC9n0CFqXy+Xzfzboe6eofKcelBL
	BiF0CoEsbllxXtLgcZ6OSe7oTUp88abl5ljsqV+Vrg2518dRO4dQNCQI+l6boF8zeAg=
X-Gm-Gg: ATEYQzyMzI01/8/8nvCB2Bj3Md3o1upLT5tLnfkk0B1eurjFIPENIBE4HAlmNuOEPlj
	c9Uhs7bJ3B9O7rB3fxsm2kY6xK/0+6p9M2kDbT5pwzCyN06vrFSxd3WsTkjbc5HQTZOd6UlQwDj
	ENTZm+PvC7v1EdxMCmszBc8dbOauGhvNYHApJHC1quKMtWvZpQamdCiS44F9aAwIWZnWZ3lpykR
	ye42kHVOjgi91VVPz5fTwo2h7GqzPW68EDF689+L03JTSj6LCPFCNUt0hAqdVjZHTGRlSYkHegZ
	G26goZ+JMvAoitbes9jK+M3j3HtCCemlIJGMeE7o1AAQrMvlPzH91Z96OYxQJkpefR+BzoQ9qdk
	APEZxp6WQqHaauJG9zZs34TJypBpVPfIEaWfwtkhdP4zbyqSIVlllKuF+0rCZz0igM8QqSpXOdt
	KQnIB7yy61jac6RxWyYcIddTCo6WoBl1AfA2CgMMoeU3cD3XdtK6ubLXSO1EZ8gv5uaI6a
X-Received: by 2002:a17:907:7247:b0:b8e:3d49:25db with SMTP id a640c23a62f3a-b937659a34fmr174365466b.54.1772195517688;
        Fri, 27 Feb 2026 04:31:57 -0800 (PST)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac74adasm142629666b.27.2026.02.27.04.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 04:31:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 27 Feb 2026 13:31:56 +0100
Message-Id: <DGPQVOVH3N31.2XHZP30TUC18Q@fairphone.com>
Cc: <conor+dt@kernel.org>, <srini@kernel.org>,
 <yung-chuan.liao@linux.intel.com>, <pierre-louis.bossart@linux.dev>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <alexey.klimov@linaro.org>, <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v4 4/7] soundwire: qcom: deprecate qcom,din/out-ports
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>, "Luca
 Weiss" <luca.weiss@fairphone.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <vkoul@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250912083225.228778-5-srinivas.kandagatla@oss.qualcomm.com>
 <DGJTU2TOFZR7.2MOU6I6J8GV4L@fairphone.com>
 <a814c0bf-e421-4cf2-8b9b-e5dac9b80dff@oss.qualcomm.com>
In-Reply-To: <a814c0bf-e421-4cf2-8b9b-e5dac9b80dff@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269212-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.986];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EAF71B7166
X-Rspamd-Action: no action

On Sun Feb 22, 2026 at 10:09 AM CET, Srinivas Kandagatla wrote:
> On 2/20/26 1:34 PM, Luca Weiss wrote:
>> Hi Srinivas,
>>=20
>> On Fri Sep 12, 2025 at 10:32 AM CEST, Srinivas Kandagatla wrote:
>>> Number of input and output ports can be dynamically read from the
>>> controller registers, getting this value from Device Tree is redundant
>>> and potentially lead to bugs.
>>>
>>> Remove the code parsing this property along with marking this as
>>> deprecated in device tree bindings.
>>=20
>> Could you help suggest how to correct kodiak.dtsi?
>>=20
>
> This needs fixing in kodiak.dtsi, for somereason the dtsi is trying to
> add ports that does not clearly reflect the actual hardware.

How should the qcom,ports-* properties be updated to be correct?

I'm seeing the same on Milos, where the hardware registers are +1 from
what downstream describes, in all 4 soundwire controllers there.

swr_rx (reg=3D0x03210000):
    SWRM_COMP_PARAMS din: 1, dout: 6 (=3D7)
    (downstream: rx_swr_master - qcom,swr-num-ports =3D <6>)

swr_tx (reg=3D0x033b0000):
    SWRM_COMP_PARAMS din: 4, dout: 0 (=3D4)
    (downstream va_swr_master - qcom,swr-num-ports =3D <3>)

swr_wsa (reg=3D0x03250000):
    SWRM_COMP_PARAMS din: 3, dout: 6 (=3D9)
    downstream: wsa_swr_master - qcom,swr-num-ports =3D <8>

bt_swr (reg=3D0x031e0000):
    SWRM_COMP_PARAMS din: 5, dout: 4 (=3D9)
    downstream: bt_swr_mstr - qcom,swr-num-ports =3D <8>

Regards
Luca

>
> --srini
>
>> I'm seeing these warnings on QCM6490:
>>=20
>> [   36.952517] qcom-soundwire 3210000.soundwire: din-ports (0) mismatch =
with controller (1)
>> [   36.952524] qcom-soundwire 3210000.soundwire: dout-ports (5) mismatch=
 with controller (6)
>> [   36.954285] qcom-soundwire 3230000.soundwire: din-ports (3) mismatch =
with controller (4)


