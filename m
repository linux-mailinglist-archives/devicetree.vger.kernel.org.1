Return-Path: <devicetree+bounces-130016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC1B9ED928
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 22:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CF031883CA7
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06451F0E35;
	Wed, 11 Dec 2024 21:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yVEY8Hdc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2BD1EC4D4
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 21:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733954257; cv=none; b=KA6Krvt+AOuRBZ8GTR4FGWw1966p23RJNj5JaBVaV0WEF9Yg0tXYIANx4U4FoT+AOYfjoOgKpVK2O/ySnuZabto2StPjNT6JT3ZF0S0GyWCHPjsYxBxRrJ9JSr4aAk3wV+cMG3SyXpN+M1Cf7U5L6/rcDtO/3hGsZRyZIE06ySQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733954257; c=relaxed/simple;
	bh=NoocTxI69ryT8lgZX5nyYh4EyrV+I82c3ZNBMnlnPK0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BDFJwel6IwXQ69flgU7ANwZ3nbhVNq4GgBVHyQtJLZ1iMAVzcdtd7OkZOG473mCXXB8k6FIcKDP2Z9gT0UvQ1gU9evfofSK0N9oynQ0ylTBlMGJ1a8DaoGKF515ThyYESPsSjLBRNgwmTNlQq+x7DO06AQeE7p/MN2JYcQNHE2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yVEY8Hdc; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-385e87b25f0so730324f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 13:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733954253; x=1734559053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OiMsT5ZPIfov52Mx3AVw33KMoPobt05c+bdtT6TpK0A=;
        b=yVEY8HdcZOYUsY8g7PVKHe0lDXk3YDPcwh9j/FVqXDQeuG5JXI9H44c7FvUgkzmnXy
         Vi0zZNrR5+QCTiI48idYjYWHFk/+VXfP20fYQ3I/jDnJJhLjJ0TBxIHl7fuSd+7EMkas
         EZ1r+tnMHEiWKvbWve0zH19pvHXHVMV8Wg7FOBgM/POhelOnRZ4GV0EjBjDgAConf+ql
         +Nsa+qUvY03LKOy+8ZSWMZp+hs8UMbG+PQrvQ4dkVc9R5XhCJ7l2SuQ1tjWugIzkf9rA
         Zh+nhhf5We/++/Qiy8af9tEdSuZBsAPq3YIxQiKKIkPxJ9J/l5dZb8RMiD/QxvDTkMFf
         XokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733954253; x=1734559053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OiMsT5ZPIfov52Mx3AVw33KMoPobt05c+bdtT6TpK0A=;
        b=kdeA8VJ9ONUIG4gXNFLCdumUCzzAm3c4QnkgIv26dEmdB+k5BxC8KPyT78rSgberBm
         QeuHEViShT6Soomu0iQDL6kitGO7UGPV1bHZFA6st3AdFl1D4Cmt8z1DZCYUzKl4lSVw
         l3elc30gNDaWa+n2cWJjj3FuKSsab2aQzxQbuAfP+vSFMYREi/VfejEYd9I+Xn25zz0j
         5zyZtjDsVobTlAQqMnH0yyTFEESJFD7zdh7TtuNNUIoQBmITQPA4qY4xguO/gKI989Kx
         PZBAJeav4SdL68huJAvz+KRA8BACqFRpr6tT74cPyZdm6cWd2om6aC25H3OUJ/eL8PD/
         b1ig==
X-Forwarded-Encrypted: i=1; AJvYcCW1CBozqifLmsS1xDHPBHMx5cOPFMKmFQPw0YpJwZOLYfnxa61FKDpKUkbRkWcRB9padyAE3Rfw2Lxw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Vbfo8W4xbHqfrVR29LXhI3IiHPXGp8k/cH07ebXLRr8UP92u
	+ALei8O6kLBBpr3MA/3Es5I7DQG2BfGXvxTgDRbfEAHikS8HGYtfjkTR/fZwkPI=
X-Gm-Gg: ASbGncuI4ZTK0f+CbaRXdI2aaC9KoJ6llpBLJ0ZoO3YwlJrbuBcl3RBxoLwjTMVx2bT
	KVq+xmvXx8TFRcCPIU5HegcKsHuyci5Z7TN4hcvxDrQBszt5pr7YvkREJ+7oG4ad03RByC87b5Q
	9qknF/gRhtyk0DWbWAQm38iDwZN+sexaXJ2j/+RBQv4dgnKH1huo0Gud2L19ZmHAuLinu285kDn
	XL5beIYhAxRkTYFyWDuWWWC+M24AK4/EEW1kUAghIsOOGHH05nFnVLw3sY/NkxcWLY=
X-Google-Smtp-Source: AGHT+IFFp+r/vdKuglbxh8YThlHAVZQ6EWL6sTWl2g1jqrOQgWrFNPXYNjeb7DaZjcHoAt35YUmQpQ==
X-Received: by 2002:a05:6000:1543:b0:386:2e8c:e26d with SMTP id ffacd0b85a97d-3878840808emr704391f8f.0.1733954253597;
        Wed, 11 Dec 2024 13:57:33 -0800 (PST)
Received: from [192.168.0.27] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361d1cd906sm33498175e9.12.2024.12.11.13.57.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 13:57:33 -0800 (PST)
Message-ID: <138cc2e5-6b31-49d9-b70e-400a3f3c3bfa@linaro.org>
Date: Wed, 11 Dec 2024 21:57:31 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] media: qcom: camss: Add CSID 780 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-16-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241211140738.3835588-16-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2024 14:07, Depeng Shao wrote:
> +static int csid_configure_testgen_pattern(struct csid_device *csid, s32 val)
> +{
> +	return 0;
> +}

Could we avoid this empty callback by checking csid->ctrl in csid.c ?

If so, please make that change.

If not, it's fine.

For either case.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

