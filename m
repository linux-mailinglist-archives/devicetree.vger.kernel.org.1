Return-Path: <devicetree+bounces-258127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAJzLZw8cWnKfQAAu9opvQ
	(envelope-from <devicetree+bounces-258127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:52:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 462515DA2F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADB345AE461
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAEA3BBA14;
	Wed, 21 Jan 2026 20:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ep6sIcUx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153C33C1B0
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 20:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769026003; cv=none; b=lG6N978Kx+L+T7LdBmgoK999o/mfcV4MHmT5koKjnwzNjzI21/Vh5mUsv0D8iN+TsWMKDBkuknD/LUGOzTO+tyLHyH58QOkofkasXxx+peamgZgijVZXus5LuSWQkflb61DTN2eaIhYJn4WuI6ZjKizZosF1Tieejvt0FGeaTso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769026003; c=relaxed/simple;
	bh=dAoMhTBJ7WQm0hDGz23fZyaeSXaElPVE4fcydWMuctE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K6QalYf6XMNb5pzmz7WQihizZ3tlV6mTBbWK8S6w8hFB/5bvWWbLlQMknftnQijViUHicjXeXFylhbtKlgfl9w8cRuCJ1g734Rxdm9ygYZKqzJVQ4Uzv/yyA6UXTCQ3MPr2NIcwagiXmUYCIlmaABVhrrloyblLkTagzVupMGe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ep6sIcUx; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2ae255ac8bdso372928eec.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769026000; x=1769630800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YXiRa33oFhWGW25XGgj2/vno2dQCcapC4LgGpnlRseQ=;
        b=ep6sIcUxyoJVVa5olxz121bIe1qCt15LSZizapdEZuMZK4t/em8mI7m6uAVRfQolNC
         gTAiXnFm71zFgE8GlOgpSJk63W7egLmIBHWBj96gaNc+ncsL1xWLIc83JCmb/wAaAZLb
         byQJiFgOP0vRk0bV/7oCVFBTAig/qWkkgr4mGu5g8YBJRSNZvLxnCOBAl8cbZX2Ybd3I
         JNkmD+DK9u21AHWnIBHCivqt4HIDa47wBkwBd8wdtL7tts0ZRAYdUCB97vKEyCaNCgJc
         v8WTWu5/fxF/XoFQ6uTKeQuKe5it5j92hN/YLyniH0XDILZjP0K22H7BwDu6cAPZUKbz
         BXIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769026000; x=1769630800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXiRa33oFhWGW25XGgj2/vno2dQCcapC4LgGpnlRseQ=;
        b=a9sCzTjttSjAildeaGkcGMIU8lRAk+ug/YxaHmwGocgis8JKYde9G+H+7vPwQYmtUj
         Dkzrtn2kYA8zhD5RBRATQMpW3h9pYjt8kUFIpgevlm7v5vZzrcJP3hoFTqTh1CqA+wPQ
         1N7rIpMD01P+C8JSDeaVT4WiHEPo4bRhWsD7V2YUhz6iVya1QA9DYk+NO9M02jdfz+j/
         m1TEUqOgw8QjN7WQZ21ahlC7OErBgtsNNYCjPAfIekhRB9v4Rl6tt6IkTPck3FXaZvHF
         2vGDeMjdgzadSQV4iXaY8LaffKxj6YUV4/YG9d6NW/rzA58nN1JUmQ0+AEmid1+VYFMd
         yI8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXLjMLGu+yAVXpZ1LMTx+Z3vn+csRT1xIbCPyb0lT8Z13FY6+phvlvARcasDkvETHpDaFBdvlAePIUV@vger.kernel.org
X-Gm-Message-State: AOJu0YygeelcH/ksbgSKkGLBnnlz85ZzepxZVdePDb3bC6zXh0U2xxMS
	LivRKsrSmR+v+tfJ6uDNZnS/H2crk4Rx6tgNi2FqhsjATcz2tLXCqxmJ
X-Gm-Gg: AZuq6aIQV1g+/x/MdZtGfKga4jU3pCV6KJJSkqQRMhrw9O272/LZCcQ5KQwVbCX9OpQ
	1SZreenKjOJNYKJ0UCPDblRmVXCKtHKKqbGj3DekglXs3KbsR1rdKzujr2MHQgrcVPNLViR+fbf
	3+hGYSCjDASofFXfJrwbtzY7Dt3N3KcMuFIkHX7EUZYB412KLv9n14weAODaKVwClnZVQ65YHaa
	tFCStORRIuKnufu5wJqN9jKt94yFjeElKEG0Jp8xKZt/ic7pmWryCvt1kiPP27ZfEnsvO+QgT/A
	ftT1USP0/JUfG4+ogbhkD+e9OAQcHr2xQFr+EHd6S23DeHCwK5DEbPXNV0r9tE/8DwEHbJKH5nA
	a9ljnp3QCY8n3OpQhhLo9ivtwp+k9tJDza5gpG8eFD64iGr0I0EvArZ327V9qf6rNNsZPW8kZ+n
	hkdazz2zacQ16Gvfq+7YGJoLg3A8BJoNXunZrXcFsWh0eHz81msTEb
X-Received: by 2002:a05:7300:188d:b0:2b7:1253:3d54 with SMTP id 5a478bee46e88-2b7125358d6mr1686918eec.33.1769025999975;
        Wed, 21 Jan 2026 12:06:39 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7093325fasm6060746eec.24.2026.01.21.12.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 12:06:39 -0800 (PST)
Date: Wed, 21 Jan 2026 12:06:36 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
Message-ID: <t4yjnuty7tmvs4vqzm4vdid7oowicy7hcnmqmu6nqtit3yru55@zpo6kprnarth>
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
 <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>
 <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
 <wpjvuclvpjft7y2rlrmfgszkzmc5vvmohif3etqrtvymxjjyjk@h2dujh5egdvd>
 <DFU439A9HP2H.1Y9OS2OPAXGOI@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DFU439A9HP2H.1Y9OS2OPAXGOI@fairphone.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-258127-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_WP_URI(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:url,orient-chip.com:url,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 462515DA2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 09:07:44AM +0100, Luca Weiss wrote:
> On Wed Jan 21, 2026 at 12:05 AM CET, Dmitry Baryshkov wrote:
> > On Mon, Jan 19, 2026 at 04:52:23PM +0100, Luca Weiss wrote:
> >> On Mon Jan 19, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
> >> > On 1/16/26 3:22 PM, Luca Weiss wrote:
> >> >> Add a node for the Hall Effect sensor, used to detect whether the Flip
> >> >> Cover is closed or not.
> >> >> 
> >> >> The sensor is powered through vreg_l10b, so let's put a
> >> >> regulator-always-on on that to make sure the sensor gets power.
> >> >
> >> > Is there anything else on L10B? Can we turn it off if the hall sensor
> >> > is e.g. user-disabled?
> >> 
> >> It's the voltage source for pull-up of sensor I2C bus (so
> >> ADSP-managed?), DVDD for amplifiers and VDD for a most sensors like
> >> the gyro.
> >> 
> >> So realistically, it'll probably be (nearly) always on anyways. And I
> >> don't want to shave another yak by adding vdd support to gpio-keys...
> >
> > Why? If it is exactly what happens on the board: the device producing
> > GPIO events _is_ powered via a vdd. Added Input maintainer / list to cc.
> 
> Yes, the hall sensor which is connected to the GPIO on the SoC, has an
> extra VDD input which needs to be on in order for the Hall-effect sensor
> to be on.
> 
> See page 133 "HALL" in the center of the page
> https://www.fairphone.com/wp-content/uploads/2025/08/Fairphone-Gen.-6_-Information-on-how-to-repair-dispose-of-and-recycle-EN-NL-FR-DE.pdf
> 
> The IC is OCH166AEV4AD where VDD is (as expected) "Power Supply Input":
> https://www.orient-chip.com/Public/Uploads/uploadfile/files/20231014/1OCH166Adatasheet202203221.pdf

If we add regulator support to gpio-keys do we expect it to be
per-gpio/per-key? Or we'd recommend splitting into several instances of
gpio-keys so that there is on set of supplies per gpio-keys device?

Thanks.

-- 
Dmitry

