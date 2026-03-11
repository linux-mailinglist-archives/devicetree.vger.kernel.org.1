Return-Path: <devicetree+bounces-274355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKNxNv7zsWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:00:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9CE26B067
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B916D3012830
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADF439D6E5;
	Wed, 11 Mar 2026 23:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OL9MztPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4232C39C005
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270009; cv=none; b=VYmlnJX2T/grJqTFjsL3o3XQfTGs1OdVv4UF2yUpocJmL7oKKfnpzzknUolng185I4xEGDfa21LmvXbSv2eZUTtHKEAbtxV8MpQQkISHItL+w/RGRBAUAu4WRq77uwAx2BBy2b49VYCrb4qIwfJD4p49Ic18uQa2Hr29DvgowT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270009; c=relaxed/simple;
	bh=s5AopRXpE8NhdcWEB4P5k4k323BPvt9P2y6xxrqlwUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJ7xtU8Jov5Klev3z0nxiMovwwBKf5SNro/lTGgeLc8U0MFvflgL/MNkCne34hx+qL08g42+brvPyF1aF/Ro6VSynoK4MpfLc5MNTEDDDgoRnHOijsKrdVkJ8DgM7gIe/YQjLW8OBFmavFZAxuTSSKOjZtr4Gs/UzjsgmlZW4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OL9MztPI; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so3091455e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773270007; x=1773874807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IUwcwJen0TL6VZ/9cqC89GRV2b+O9DeXb1am5MEKIGs=;
        b=OL9MztPI27Lbb2PCyEGbBSGc4gbQMIxPbD6gx7YFZkf8HS569sTIK0UpuebVS1R8gv
         XspKYykMp1P7oexRwBGyZzlxYPdD5kmEIEYgiCrGq9oeB/zI7v17FVczfSy+BN0fFe4n
         F3qnKlYEcTM2+cDh+WcUs3piNLikucUIAQLbjwO2HE7TdDgWI9wFWH/aNCXkM2lRjrTE
         ux4o9aiVptYlDQP2tTxtteHM8lNqrbJgWoHr8ga4ZXm/f0tI1qfD2h36AgrnljhB1qGm
         OG5T1qUbWOogWhrAqvxnELI0j7q6dhstbX27NqWigQiUDIwqNAGlcVuht196yyCfpfr+
         UC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270007; x=1773874807;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUwcwJen0TL6VZ/9cqC89GRV2b+O9DeXb1am5MEKIGs=;
        b=v9HxfxqWkfn84rQ0QMQtm97zsfBlfzCU003ZauCB1W3L+SIYyI+QAJfeebCwivjwsc
         6iO09VmLIz4ux8dMIW6XcgK7COxSgT74kluusCrxQKndWMm4tgbUvhdZGeU8z82TLnoa
         AkX9gPltp7vfp2PpB4+BtoReevK3Vi3giTTRA36X8KsOSza+9MMpzpS/DOFhFJstbAxE
         w8F/c0AWv1rn2Z/H8S7UKqO6Yw/67WSNi6P3wp3RoZRb4xF7exjrVk1eFYUQRr4PREBb
         M0Gso+zXhv4SZL2+GVRMhEgpwlZF/0C4rm+5KrHBPuQA5HAzE95Eo92Hj3OK8NWoljwh
         xPnw==
X-Forwarded-Encrypted: i=1; AJvYcCUuOjD7XGAzAKNPgPnEKzxgjTFpUQv9KZkDa4xBVo1XWAJzHBi0niAoVbRHK+xI9dnX/iq/rlu3aGRh@vger.kernel.org
X-Gm-Message-State: AOJu0YybtbG0/V0TXelUSVYLyQ5NAoBanwyES4HaYq3cy4NWnfSA8k0n
	DGSuj6Ir/nbjEmonEY5TpNqpMWLGFKa/7Z4TGqOgSh9Rjwi57Tkilj/iZv4UozLPT7s=
X-Gm-Gg: ATEYQzw8IXRjXsmIP1jKb/9D0c2bDcgZzrrqJ2sclpUl4c11QxZBNtHeGmqu5iwCbKM
	Ook8CGkCd140ooBnOAeTW3oIlsr8EBx60zlZ3CVCBCW0VjJXEi0CwGWjWfikUWEYQtvq+sg5EA3
	ku6wYkNLbxRi2yUZOp26JmO00tpu1ZA7zQxFF0bPKOj/RZGq6EliP+K8v+HrmLyJq8ahNTRwv2Q
	Bj/VoIWhYnD0xz1Rp92wvBED3jXVG4+BW+/xtQTvv5KB9JA2rRulm3ZpJOx1DqlqvI7WZ6ZE/H3
	urq3F4pnp+Ev4zQE5Ag71+rmjzCkIZ8cv7O6yMdms/zfAdyHkK+1AmpD0YVyozeBVhjn3PUObX8
	Cvmwxh3AzcFsrQygAM5g6XJHQ9ChjCy0kWuvjHHwCmcKotOlLzBGzhQ4psxXPHHN9RZZJKsos4f
	JLrYXRTFi4e2kkitAMOBQGiaAmlZiNFjjlrQ==
X-Received: by 2002:a05:600c:6305:b0:483:703e:4ad9 with SMTP id 5b1f17b1804b1-4854b100b22mr79689175e9.19.1773270006630;
        Wed, 11 Mar 2026 16:00:06 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.88.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20c473sm2699459f8f.24.2026.03.11.16.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 16:00:05 -0700 (PDT)
Message-ID: <89771dba-ffea-4f56-8bec-df54eed441bc@linaro.org>
Date: Wed, 11 Mar 2026 23:00:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] usb: typec: qcom: Add shared USBIN VBUS detection
 via GPIO
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260308-qcom-typec-shared-vbus-v1-0-7d574b91052a@pm.me>
 <920ae606-3d7d-4f61-9d11-bd970abc5177@linaro.org>
 <v4m49h-DK1i8hRbJZVhc1GwDH7oBTRgeXg0hIE8chXTULQuFFfSibjXs19m5E4srNt4852h-x_YcxMoPaUjzPqmwYHI8-tRc2-X2DaIKI-A=@pm.me>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <v4m49h-DK1i8hRbJZVhc1GwDH7oBTRgeXg0hIE8chXTULQuFFfSibjXs19m5E4srNt4852h-x_YcxMoPaUjzPqmwYHI8-tRc2-X2DaIKI-A=@pm.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274355-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: DF9CE26B067
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 11/03/2026 17:37, Alexander Koskovich wrote:
> For the bottom port there's an independent boost converter

Ahh..

OK for some reason I read your mail and thought that the PM8150b was 
sourcing VBUS for both ports, after realising you had a RT1715 aka 
reading your cover letter again.

So much for my research on how to make that esoteric setup work.

---
bod

