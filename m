Return-Path: <devicetree+bounces-122186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A61AB9CF0A2
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53F1A1F2475B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 15:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40B41E25E4;
	Fri, 15 Nov 2024 15:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZI+4IsZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91D1E2313
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731685468; cv=none; b=VPzsf6YkG1/PkL+MKZI0/h7HhD8JVwQgBKnI30JWbkHkLaA/4mhlpgoEnSNZqCvbwZ3QmMl2EkAHlXiHwSGVhnKQRHNSyQQslCZpZBju9atueVPhq54G8GfKXwKjhas3etd6E8zVCURQ4nHTegKdDd+fhMKNlxnKx4faT8DtglQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731685468; c=relaxed/simple;
	bh=cYteiJgMiep2Jq7WbhqHKVo4vq7FKDPN+YhaqgkeWz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iHI6NuuzfdjPScGh9nGWuaghB8ch3QIruMklxkYZzY+LBjVQmESdvDW9GP20w9TVn05r844+oXa6biChs+SYEN5OjQueQB6cC1XbcKN5gIAFC05n6sZw3zEQZxwJt9d9gw3emGsP3+ZTQm3C/RL/4opWaGHRhByAwwW0KUsMikc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZI+4IsZx; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53da6801c6dso754412e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731685465; x=1732290265; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sdH3pqIftktD7b0Hp0V8fou6yJyhDjg7N0Ilt5wq04c=;
        b=ZI+4IsZx6nGA3/lASskQBgml6AfXuzTubAKK4NrNngwUB32nHZL2P3C95o4DzR1gkB
         p6SDm903Sab2WwwH8ejhtxwUdHHxh9ie+m6HBLCeMr4RYzZMeScQhkkeOBJvj8HL9Ew5
         tqacVdvcpiuwLpEsZ4VGl21SA4qtzTLRf7rjl1tX/MUXI3BX69qvMpE6MnrVYydLmVAa
         mQuASk1NSMNSRvyy4GK/cJrGv9D07VY9l6co9gQ0PZFwbPhT48wuJNjM7TbaJQfvfNn8
         qzFK9KamatptfPpyp4y0F/+2Iozwt2DcGvH5aXBMcP3ETIVe27vOGVV2HgztAR7vJ7Ob
         ftew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731685465; x=1732290265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sdH3pqIftktD7b0Hp0V8fou6yJyhDjg7N0Ilt5wq04c=;
        b=COaE64fpfwKCevH7MbeXMVzQqTXDS+7+1fZmufykpKC5oDSDS7O7BsVQZm7QLaO7aC
         dgfG7hCLRQbhWOTJmDtLVPdg8quUXwKibdt+DdSZDaLqAA23n2ZeCXpP9iyu68KNh/ek
         p4ug+uFUcS7gV+uz8/pAVOB7H6Ydsa0d85OTeGnRkQJsG5QMUAD5rPjg3MOlfTL9HR5b
         AXOqoUomEGRIobL7oH7i2pY9MTw8KVeLxjui76fDJ1TSwsqBvAO7yZ8ooyB8Pb+q9ibs
         9B8ZkgZJ8pjYaHzo61EachNuWsRcCc/6yi2fIdBwMk36x5G7sKVnS5YyBcKNR51+7dpV
         nDng==
X-Forwarded-Encrypted: i=1; AJvYcCWH8tOhnR19iNlupED++8L/70vdjmv7dCJu9diPF74seYk8sPkiPnvNBdAG/lpPZ+gtDenY+22ktp4X@vger.kernel.org
X-Gm-Message-State: AOJu0YzTr0QAl8Um1KtKH0gfwwdFcXjnYDbdIbgSTrc6zAKeyWm9llMk
	g7Nd7kO7W0OLmrP3C8XXHwsoZmtudOcyZbUhOa5e+AVPuO1LytaiewWggyYBNPY=
X-Google-Smtp-Source: AGHT+IGJ1Z97R/E2OYInl5zxgQC6tLV8/0ODPyzxE/Ts3mGJtyeMxbpeIcLnxKLkaL3O0Q6QejEvhg==
X-Received: by 2002:a05:6512:239a:b0:539:f7ab:e161 with SMTP id 2adb3069b0e04-53dab3bf59amr1563656e87.45.1731685464495;
        Fri, 15 Nov 2024 07:44:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da654896esm609949e87.238.2024.11.15.07.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 07:44:23 -0800 (PST)
Date: Fri, 15 Nov 2024 17:44:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: pmi8950: add LAB-IBB nodes
Message-ID: <aplxl5e6pakuvpv2sgfesib5e36fw2znyt7a2izwumoodokpmy@ochpnj3w6pcz>
References: <20241115-topic-sdm450-upstream-lab-ibb-v1-0-8a8e74befbfe@linaro.org>
 <20241115-topic-sdm450-upstream-lab-ibb-v1-1-8a8e74befbfe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241115-topic-sdm450-upstream-lab-ibb-v1-1-8a8e74befbfe@linaro.org>

On Fri, Nov 15, 2024 at 11:20:53AM +0100, Neil Armstrong wrote:
> Add the PMI8950 LAB-IBB regulator nodes, with the
> PMI8998 compatible as fallback.
> 
> The LAB-IBB regulators are used as panels supplies
> on existing phones or tablets.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/pmi8950.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

