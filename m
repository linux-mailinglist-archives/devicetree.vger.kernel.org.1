Return-Path: <devicetree+bounces-269006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iG6MNvO7oGnClwQAu9opvQ
	(envelope-from <devicetree+bounces-269006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:32:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE511AFD86
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B71713008231
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D966426EC1;
	Thu, 26 Feb 2026 21:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="KWr1ery7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6790444B67C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141307; cv=pass; b=kR8uKulGrZcRUyiOJj4HtEDbWCwJ6HwX/0W5UIzc08MJzjSPfSjb4HAMDk8l6HZbCriP6R8XxJQEoeKi92Pja9vtwXO0iu5m61Hh8l6QyV/WwqAxRKAYyJ150rJkKKJVHqu0xLdkEKER5eTpmOq6axedXP99WUPSoLPJVnif4WY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141307; c=relaxed/simple;
	bh=isFrMkzZQLKE5l+jfwho3bY9wdKvh5U0o6XjpyV+yF8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E6ytAde6bM6QxnQNlIF0rIjciOPzaMq5vjxi44XosYd5EwLRypE+/H8aTOIepWFU1xKFTjf+lCKftEVwL7fjT2N6wTtjvp+UBjypQ+0wX9kYTR2kp6L+Sfg8DnfBk472Qe2ixgXrbLCt6GcmKWTgO95QhdSg4BS2+xCA2vJq0jA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=KWr1ery7; arc=pass smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2ade574f05eso9404145ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:28:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772141303; cv=none;
        d=google.com; s=arc-20240605;
        b=Yxem9GLeG9jeNqWkl5N1fs4Wl0J6LzudFWnmh+Rb7FstaC+CMIu5fK1Rg9E04k9vtt
         +KXbKdd59dFGKICJFLl5Fw/mfFqhcSA68KSMhJR7A5H+mdodVYB/+bWVymln7ZlC/rjL
         BOqLRL+1eh/Z0GHNTAggCLgiYY6i3tLU2ix+YFJnpgclQHNmwfylPOvv4fVJubyo1kmD
         /TGqHa/2a9mpiXK7i4dt7qFNedEeS8XRlSkvrEmakTKD3PFlgamdj44bhQhCwmCFidvL
         ni5cnboTvrC1+KuT2HH3YgzK9N6TJ65ZQgrA/dtfnqw6APQUphdlEeSTUTjFu0mMTpZv
         MQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=isFrMkzZQLKE5l+jfwho3bY9wdKvh5U0o6XjpyV+yF8=;
        fh=UC10mif4Uur9STU8nU/RAOSqyqoHq/3VnQIem3S0TAc=;
        b=NnQMg3uRWYtLiW47EiIWH+RJw08c0CwKbaaliKQtBBHPyl56ui/+kpqGWl/wpeMX6N
         OMmqbOkF69JcEllpP8VXa35KMX3rWs7mI+WmrdiCPHXk2vg4+elzbyxucED4az3aasu+
         JdiJpzkyvT0rrPFkVHg870NnCJOyyl2dIbWGmseMbhl5DPk6D3GV/6t12EPOZZVwtZc4
         u0DPvcucISJT4AMH73wYrCwmvzAoCVrnAoi16uore4Epo4HDBwPe8M+cZ5tpyrgzPZ6I
         YUsuv0XQ5Q1Oze8AgHGCz0pc7fKf2w/Fw2ST4Fd6sOO46sWPs+SbDAN2Ud3buIzmXFRV
         m5lQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772141303; x=1772746103; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=isFrMkzZQLKE5l+jfwho3bY9wdKvh5U0o6XjpyV+yF8=;
        b=KWr1ery7jcw/ApvwfHl+EMKVWzi1+XJDYnmcf0xJrVUQLTFVWdx7VzD8tALukS3gaq
         e+lAPlpeYLzKbH87/BNeNqr69jjTfQWJyvirx8k2oFf82PafStfB5ZRR8itc5ZGTa54k
         oJaGT8Qn0SP9P5bDRHzE/s1PQirQyL6Zxi2xP02oAUAGBJg1ceqWtL49iatwxwu3H7xl
         50MFsV/su5B3yTVPMm075j9XkcPd19jaQ5oc8b+kfeQU1MzxnZGpSgkxL0puM53cGcW0
         HEB7ukHzpQsawvRAvpLs+O5YrOkZO3QA3xAnXp221uPdHU5js9AWZjTQw15YX+2nWFpN
         h6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772141303; x=1772746103;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=isFrMkzZQLKE5l+jfwho3bY9wdKvh5U0o6XjpyV+yF8=;
        b=Vak1ujYaAblq6DQcxDMFQ8aSgOz7v9p91FLK0WF4SlIovE1T36QAtgQWc0PBdweO98
         wedKSO0mZ504SaWJ0mYDRtHZD5S+2Y1VfoNz0LMgzNDKdZswxrODO9ldLJlyCcxLAY+R
         ZUPpNI1hrwhDUaMxxaUmGAzPMJZHWQ6DKJn5IOKBg0CoVz0KeWBNFqxOYlv91jzQHoBU
         acLXIqUglty6zhJi94735YBjxTzKRRD2vpHityNtGSamLEl29k41DolONe+NhHPCBxqb
         vrbabaTTSuVdu0rZpc7d+1H8AFIPPzkYaLOURqCHjF+juuyPZribFsDGC3JE3MYKanAO
         rGJg==
X-Forwarded-Encrypted: i=1; AJvYcCU113vrFS2+vkwA+D+7IgcaYETjf4d728QDe8oSVrwlN5LtsSdJI6VO2PgAalm7duJJbRPwPnnjitXv@vger.kernel.org
X-Gm-Message-State: AOJu0YzzJKpuFt8WG9t7qxzpr/2NKEx7eI+wdoNipZJB6HVGNsYA6sks
	FCWS6azZTKkWod8VJPP2wujADi+flxQPSPjVJ0hzRuol67i1zmXjBVOL4TsO62wO1J61TIDmlxA
	BfjnIpkGfpJHA/CwsqCXrZPdGzBE1yKc=
X-Gm-Gg: ATEYQzxn+5A4LqWfzy2e+1WTFUMCuTRgsjjsRXX/Vze/EXFnCc25lq1VIQQL0LfqBFU
	a6XYMkMduoxXSRestF06IB30ocmHL8KO7Z+HXAbznOq4OL9IkNtt1tf7qhGJaUFcA0FkwNI11Kr
	FMubuvANxoCSqI/KwQh1ozFkxFPCN0DU3AAN3DSW2lDXmbqdcfnheMlpJatui7gOmhiYf4r3Mkv
	qPnl7Hfqcql6Td22in3RMTVBFwHNjtnrXIt42tSqQjNrDZIkqxTA+6vnoDz1vdBycKXkoEDU7Rp
	cRqTuEnhZXPZtEedymbdBmIpJsIFZKDGRio7WK6m
X-Received: by 2002:a17:902:ea11:b0:295:6d30:e25f with SMTP id
 d9443c01a7336-2ae2e4da14fmr3619915ad.53.1772141303480; Thu, 26 Feb 2026
 13:28:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-3-nick@khadas.com>
In-Reply-To: <20260123022258.136448-3-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:28:12 +0100
X-Gm-Features: AaiRm53fDnetE2FB5uKh_jYrb87ycfZGsGZSe-1f1i-ud__7mbll8f8_BcLdpWg
Message-ID: <CAFBinCB4R6nui+6uwcQAzPFyqA38rZGEvYwGgPHKbjysQyWLMw@mail.gmail.com>
Subject: Re: [PATCH 2/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable bluetooth
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269006-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,khadas.com:email,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: 3EE511AFD86
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> The Khadas VIM1S board uses the Ampak AP6256 Wi-Fi/Bluetooth module.
> The Bluetooth controller is connected via UART_A and requires the
> external 32k clock (LPO).
>
> Enable the UART_A node and add the bluetooth child node to support it.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

You can keep my Reviewed-by when updating this patch to include the
pinctrl properties.

