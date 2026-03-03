Return-Path: <devicetree+bounces-270283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBqtDBdkpmnePAAAu9opvQ
	(envelope-from <devicetree+bounces-270283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:31:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F811E8D96
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C83E3301E5E1
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 04:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A9A37B000;
	Tue,  3 Mar 2026 04:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HfnTcdVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D55347514
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 04:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772512274; cv=none; b=cQ53aJTvCPui5GtFOfaLUUh5LLnXCEJ/LAwICXHDhvYLywx/4+n5g+ERDq3xqrFb71XasjbDp7c54Kb9BwnuqwfoBKqVtOjqO/4zUrjxDK20z2WOVcMM5aWCKJr/8oyU6NdVcvCrls1IXJYywqkw9MM3UhyFD4ndVbD014v8OeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772512274; c=relaxed/simple;
	bh=2Kf3LOTcLq111+z10oLFqpqx9K7MD+UA54ioA3mImpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=POgS/gaeYNXgOVp+EZettkbY8JJgQ3+Y+w0AFKJ5XpPKCayCbfOorD4Plnx4BTMxHyT0jz3e1qbxR9KLtOdOEYIbeSO8HQVuDoFMX/VGA8Sn/8bSF4gSsBtLc4sljxCHLUznqFTiIKhwZ0MtPDryhy79Sg9ouYxs/XOASHALXtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HfnTcdVP; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-81df6a302b1so5643416b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 20:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772512272; x=1773117072; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XMHu6Y2gYxnqJzkOf4K6uEsNEzJ+7bA4f+5IkVS+SZ0=;
        b=HfnTcdVPPpVe76IRMJWMMRXzZwHTEXJmJ6Wj61JEn4J7C6FOlOf7MkCzIXHnACsAiT
         kZ8gX1yZOpmcwFCo9nGmINf7vZ1w3cOP0+Dr8jBtRzXW90eojTMuebkPC6eQ0fEkY1Zb
         +fnsjXuRe30T8C6s4ZDFPCzifTFPlwNUxyrMqqECDf+u6bW8T2DHpwhdk/3CU7RqIN04
         vb+0zwIgvDkeDU2O6N6Nmbx1pGB933ENyanuKZrdHqel9rTMU4NZtl+4Hbj6zMRUem01
         lLX1q5j3MYI6B2r3QKo3WaRsP7Ji4V4dal4d8caXuS+8XCfjOt4YgSNrGwWbBDctILRE
         kVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772512272; x=1773117072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMHu6Y2gYxnqJzkOf4K6uEsNEzJ+7bA4f+5IkVS+SZ0=;
        b=magVKwogJtCfebHMl5dHSYLbsTKPnQU4tXSsdxqmkryhYZEdX2NVYyRf92Wtmx1asP
         /M+n6nRso1t5ldVMmBs5jNhxxpGM2LhlX7usgIzr6CcncWqs+dui2RSUF2xVFIGiPT/+
         fo1OOVLgOADbR5nDkNbw6+hhXdkq7RvPZFlIhoLZ8OiEfFeUjJnGSrO04OVoUMkRTTMo
         +WX1HL67JBysWT3qhiM1IMmIewcSzN9p/UQT+3tf20CUX6VauHaOwvmfIIaWk0jHTaEn
         3+VKffz+0b5CvFhBbTUCAyA5N7DU94HAjvMbit5AHcoMbbHSIz0ZHhuAirbhPISTyoIr
         omLg==
X-Forwarded-Encrypted: i=1; AJvYcCVsZkTolHJULg44rlUjdQgale4EBQtSnTX9OaF6FOOhgsGeeGS6Bih2xFBWHDyasXq5nppqm74i1Vyb@vger.kernel.org
X-Gm-Message-State: AOJu0YwxLA2FObSSmP6oRdcfD+Xpq2PlAaJ5NjjF5kvwefgjmRziAP2z
	2bglXw9SBgEyQbQYP1BN9eoiRlIaiqGn7lySjPsWX4UV2qCIbLHoW6q5UINojTnfK7w=
X-Gm-Gg: ATEYQzzMwr+8PoSYEYIErbWJyLQg3ornithHDOBw504/6qP30rAFHMbOV69bHv02XVt
	Y8KpgX3+M5UYsekDL6yb8XMZOaZjf6NeuKlOF3o74typ5IwATUjtM45KdN/GR0I7vYKhoT7JFed
	tHVmQmnVlCkEENoTS05aNianl+vjR+Q/Ldf9KF48KUWrvtVbDWKdkCN54qw491Vs0LTwjsF04W/
	6W14NNdvmVeI7ZJbtJA4aHtBayzatbsuTuSZnFcE8s1dZ9WmYDCgLaflWiShox+ght5UVLKuBG8
	lmTBBYe5umUKx1gFTYsz5OnqQp2Jd4Ne2RnLaE+5gIRSJNb5ixadty2BOoeamP/G/hXd6LiLujx
	ci20ardr7MYRTV01TEfa3Qo59isQ8l3fObuOLXIEQvPxju93PKMe68Bo1EAE6jck0xxAYUwxeWR
	8L3wr6aHMXS1fW2a/QORR5VOh9
X-Received: by 2002:a05:6a00:9086:b0:81e:a228:f0cb with SMTP id d2e1a72fcca58-8274d9d9b38mr16557258b3a.36.1772512272261;
        Mon, 02 Mar 2026 20:31:12 -0800 (PST)
Received: from localhost ([122.172.81.200])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d5689csm18593111b3a.13.2026.03.02.20.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 20:31:11 -0800 (PST)
Date: Tue, 3 Mar 2026 10:01:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Ilia Lin <ilia.lin@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] of: Add and use of_machine_get_match() helper
Message-ID: <bmwutmbouey22o4zj2a4zdgahuzwdwwwnd3hagbe7ql2zcjckb@d7ytvwbpimsd>
References: <cover.1772468323.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1772468323.git.geert+renesas@glider.be>
X-Rspamd-Queue-Id: C3F811E8D96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270283-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email]
X-Rspamd-Action: no action

On 02-03-26, 17:29, Geert Uytterhoeven wrote:
> Geert Uytterhoeven (7):
>   cpufreq: airoha: Convert to of_machine_get_match()
>   cpufreq: qcom-nvmem: Convert to of_machine_get_match()
>   cpufreq: ti-cpufreq: Convert to of_machine_get_match()

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

