Return-Path: <devicetree+bounces-311527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E3RLLQw1L2oy9AQAu9opvQ
	(envelope-from <devicetree+bounces-311527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 01:11:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B29682758
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 01:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Y/rQ9WUn";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311527-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311527-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7024E3008795
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 23:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F7E36CDFC;
	Sun, 14 Jun 2026 23:11:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842272F8EA9
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 23:11:00 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781478661; cv=pass; b=CwPG0bvYTXtAgRHPqLNUbqkGjvhjMe7/ueHMCh+i3kDoR/7ZjQElGs9tZLjjVHuhOuPO+lksjHia5Ysm4ON2pjW8WV2jR5D3oNoFrpGig4/shJF8hoCfXZlkVYW6sHZIPdFD3PXmHhWWCQv2JampJiMiYrniYAqoeVMjUE9ny9E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781478661; c=relaxed/simple;
	bh=rjVDYWZQNGoDR3AfOz9WNdT9V1VkyrqPMS3E9BtwqeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dDk1QQEMEmTOms/qPNVC5GiWrynBfZ40qY8DzrwXPfyxeIF9cIc12WZI3pH7CwMNhkYo2jpUWYWimE4RDUg5tfdlZ6c0ZCtzv1Ei2IIWDCIhULNT0YmjF+0EIOvZjjTFqjuiE349OSoDmGjhHj/HXNFAjxJnA1vW0UBCA5f5S+o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/rQ9WUn; arc=pass smtp.client-ip=209.85.128.178
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-7efd49373c0so23136447b3.1
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 16:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781478659; cv=none;
        d=google.com; s=arc-20240605;
        b=F7ek8GUErGTdoRD3DCVhAwaAmz3e6Hjgb4CWsWiPDGjrWw5e13iWzH94tuHeBPDNb1
         xhYXsnVl7EMIx0gUOFXUVTkMR80rzwXtYvwGoBU7BpDlG7zDG1T9kjRpUcgrLo6/8ATx
         VIapgDRXQ4lOek1wdTgrb/MquD8q0hMoBy74Q+URroxqpgJqvGtOT4a2OQDIznX0clcK
         h4ota9+ta/CMdWSN8nMWmvZiDLKJg/nWOdjUx9fPdUwTO84LwzgNjt38ARVU/yu1ctaw
         JV5YVU6TOSflhjPRObMyFnnkIDJWjfhW7aRpGASqyirkAGDR1sJEgTnfIbGSExKhjEoS
         oRJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rjVDYWZQNGoDR3AfOz9WNdT9V1VkyrqPMS3E9BtwqeI=;
        fh=H4/IiT/l/pixGZhkYXQExGoYJlqDDv1tNAkjR48YM7I=;
        b=M1YYv7iminSQ+kIUJUnCmtulk/4WFWEK3rYiUNzgYlh7/VEE640EFpVb/N6Xo1LNjl
         S5zsHKiaiAXNJUOhXWc7m+peHxJf1lNFq6syQ+spFXNC8TmcsrtEthqaAMxJapyheAIv
         yx8YQC66n9XYYtfFiqfVPp2c+ebjOraGcDPxnmyOU7KEeG04MRF7eFeGans2DifoMIHW
         DxLfSKBeAxyAar+20zs2VGC74o5LNWPS884hoTh6Ar0p+67RXbbyZlQp5MNDG8VIs9Qf
         2Z26hlPp3CuXrlXmBheA0ka6NcOPPqYCUzi0Sw4pHmCgjJ+p67t9wqDVodjmfeIIQupw
         k9Fw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781478659; x=1782083459; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rjVDYWZQNGoDR3AfOz9WNdT9V1VkyrqPMS3E9BtwqeI=;
        b=Y/rQ9WUnSnRTgnKvIho+BP6VlLmMvQjPMm2L1zRnnSt61zarLhZgCCrippOwoPaJZL
         BGXRYiKduA9nKpb60aYCFcUTC8+UEwrmmHe9mwoEMqpxv/gm1lKiRet29nOGs2cUB63c
         4baP8oFhn5YjQaeGT4x4lOskt/mvh3xgf92q/mrXhUX/IbPqM4MqfuzCu6MaASwC10uz
         PAAwa9VZ3swFVW9R4GN/NsSc8Ba6gvrZR4cmE88JWLADMBIao/e6P9TiUdYriSMLfXuT
         vtrS9NxAXsOxvPjVX1YclDa+kflPiY4BMT40I7E7XkrFe2zLGFo789dqJsXiB2jZYs7o
         7Qng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781478659; x=1782083459;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjVDYWZQNGoDR3AfOz9WNdT9V1VkyrqPMS3E9BtwqeI=;
        b=Dehd44unPW5UYVwpWHerOQzHRanVCpiGhtMZrJScS4w53GuNVfwONm/CVwKON+vLcG
         21JwxirMfSRBzniMAjFVupIucEBhlHlMbDeJ6dCW/gCTjQHTowQDP7lnEfMRQ5t1ReIl
         CSmc/eXE88LEf2qP14m6+hXoS8qEBlxwmAqggXoyqrxKmzrBMj1OvBXud8Kz3Pg7flM2
         F9i5iFuWP2MicuKuzWIPG2lOHXsrgsle8wip4FPVlkmNz370XKM7jKRxqOMltXr1LjRw
         1mpesdtFq7X+SRCX/cPlqiLRXlp7GPppxxkT9ZBWUjRGMHcjXYva0f3YyF04+Ffu7dXs
         Utqg==
X-Forwarded-Encrypted: i=1; AFNElJ9lqlf4APchtjoLPblEApt2Wc45ZYLCoh3NRvi2HVWQTw7Yp4RlzhU3m0u8VHrspdDe0YYbOLKyDpE/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg5i3gGwLlXGWp7dWQlUHKdmJ50U1RJieu3yGMgOA52/RkXA/X
	PEsJr6xlu+WuXpdSDoWXrqF5s03kcGiNT18BQLoqkjX83PGL/G0jCFmywVQpdVBssFN/SV33mTs
	IkZZnvoTvtYKuYMcyA4JZgcD/RvTAVs8=
X-Gm-Gg: Acq92OGutG1C3QqLu9okKk5BdbSCWYUSgtd2Jt1zwbmjWaOT0JOlIH1O8rwJ9ozbatD
	dbTQOyQWHrF86jR/luZpSoRB9xarsvH7zlOIvflEcdQw1C7uob8LGs3O+Ou8bF1Oh1zCiqCXYOK
	CBWrj2Y1IK1JyxBtzawZKfM+1ndzCsjcG/RboFVcDiu1Vo+iseP9N+m6s+f3GikluxnpHz7klPL
	Qi4J5VtND2Zmf4WZ9xDIgsSSGlODi3GOxd1Xm4/lZbIAArRNcxhEXqgCbOMmLsQPxiS7R1l+iFg
	wg2/4xxpXaQAAdthaPPHQ+q3TvADMIlGpFBDaBtKz/dObmU6s++7+oeIzPDvEt1euVrcNXAPupP
	Er2m+jA==
X-Received: by 2002:a05:690c:b01:b0:7bd:9566:ef0c with SMTP id
 00721157ae682-7f7b862e78fmr119687847b3.26.1781478659551; Sun, 14 Jun 2026
 16:10:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260607234343.22109-1-kimjinseob88@gmail.com>
 <20260607234343.22109-3-kimjinseob88@gmail.com> <20260614185914.6c14d376@jic23-huawei>
In-Reply-To: <20260614185914.6c14d376@jic23-huawei>
From: Kim Jinseob <kimjinseob88@gmail.com>
Date: Mon, 15 Jun 2026 08:10:47 +0900
X-Gm-Features: AVVi8Cdqkxn_jwr_B4sti63s0G3x0_uMazWV8Jxn18jsY8E46VaGjxB-zdDsBH4
Message-ID: <CALMSewJgdzLbX0KYX5QjwOKce_+o8B6jhz0jh7x7PKTRTd0JUQ@mail.gmail.com>
Subject: Re: [PATCH RFC v4 2/6] Documentation: iio: add Open Sensor Fusion
 driver overview
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andriy.shevchenko@intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56B29682758

> Same issue on needing this series to be against a suitable
> tree, not on top of your previous version.

Understood, thanks.

I will regenerate the next revision as a full standalone series against a
clean upstream base, not on top of the previous version.

I will also check the final diffstat before sending so files from earlier
versions are not removed, and fold the MAINTAINERS cleanup into the correct
patch.

Thanks,

Jinseob

