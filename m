Return-Path: <devicetree+bounces-66587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348D8C3D80
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 10:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE88E1F22080
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 08:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A94148316;
	Mon, 13 May 2024 08:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="cjK3NDD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9474E1474C8
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 08:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715590032; cv=none; b=QPbJHwDBQ3sJFbM3/LErVx7ueidzsJ4DslAUstDynUTIdSS+0KOHSNhvGXP8hPpwIdySt6COfID6OCT0wVwd5E9gijGIwUgNkx6/v3UnfX1UyP3FFJFi+mIdaZtQWv9jMSmEe2Q8qBCEYRIfCIvGoyXtfAPcwCImKHWKVeyS53E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715590032; c=relaxed/simple;
	bh=ay4l53KFyWMs4X0MB26s3TiXNA7D4Ln24K1ls5svm9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ay2qGNWjzGw+Bo1H2bYFuupHu6qGACQxBPPwcj/htfGTV6nJiObAnfjA2Yt7c9OAq+pyZb2wvXQiKMJK+2myijSzi5pN9uLMe96BQKtJPd3vf2PNKJfM13MzYbU4vhjKRvjftp/o0Gy9yr4hJDdAcnZQ3rQyXGxZI3/QT/2CqEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=cjK3NDD9; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41fd5dc04f0so24627575e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 01:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715590028; x=1716194828; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bcuSPS5JIn6rbUtQZQnUWcPyEdFOS0C3v0LidEoMeqU=;
        b=cjK3NDD9pHX5rq5JFCNqF3zqlRRpIz2sAuD6TnSSi0XECpXazZnkEIjfrISCguiiDj
         wykidAIYmuIfpbWk4xZzneMraTz7/hHfzwbEERXcrF1s3QPO82uqq6XgJ57wQmhmNY90
         m5ATQ3Ud8DWZhrOfk08T9OZajbzaE+hEIwozSJoziI9UvQitQN1jmjDBMfVR+KwKAGhn
         yacLMfODOEaAZL8LArf4mU88fHRGOTEC/NsGwpeHB98JJS8w/iJJtu/NjQhYfMdL4muc
         vyAy2FHc/rcZRnKsnWs15CZYQWa0TraIC8PCgDf6/kmQUrTifJ3YOVTbGhPsSy7v64tX
         3xYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715590028; x=1716194828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bcuSPS5JIn6rbUtQZQnUWcPyEdFOS0C3v0LidEoMeqU=;
        b=LtUAbD5RgpiPTokTECw1PTGWoWag+W2XZ9wvA5ZBeRH4WbcKekva914WCM0Fc1nbQb
         C2LhP0NAnQ6Zk7k1PpElbvf74y2RUEoBtLZeBpsMwETNJgvhl11pF0FLnMZjKJF2DvxO
         ox2Nce+Jcd6XZzpJO0OPXc2Imv/QWSLi88SBfbw1qCwz3BE+RAFWveq3y+Iq37KHBWO0
         7/LwNdJ4LJ2scUCV1gG6aZG4PUoeDVkPmJiVTfhRJYU8RtOomBZ3+jr2W3NclHJ7sqvX
         FleM1c3k0GAuNX2qfwv1yI7/rQ4UFNm9xa2iwXaQzTCdKbjZAwoka/Ma210dUG8rDuGU
         P8SQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBoqsxhPGMyRpMCXGQBG4/BWMUqlER7CFS67uFFArZQK110jJWDltlOeQJcsBS2bvNeNvD0lV5Hi0Sj21X0+G+qa8fI+I9yKfx4g==
X-Gm-Message-State: AOJu0YyZ+V7QaY/lzRRQ9ZZdOywC/WEJFPPtn41oixnE/Fa62kP8PffG
	LeGz/koK7ZBCy5zYXXoHW0v4pkqjKXM9FwSb34L0bYSKsWNAkRIkrfn53tZ2KOo=
X-Google-Smtp-Source: AGHT+IGoxUAK37WJch6WRVq2ZvJDJfB6x6dqXNnk8tHgr5jpbGnCW0QRGrUfoYzmHSmaKrgDIicWlw==
X-Received: by 2002:a05:600c:42c2:b0:41f:e4ad:9ae4 with SMTP id 5b1f17b1804b1-41feaa4391fmr99777695e9.23.1715590027893;
        Mon, 13 May 2024 01:47:07 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccfe1527sm147482565e9.44.2024.05.13.01.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 01:47:07 -0700 (PDT)
Message-ID: <3d004edd-f83a-40e5-ad7b-ee97dc198714@freebox.fr>
Date: Mon, 13 May 2024 10:47:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
To: Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>,
 wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
 <54ac2295-36b4-49fc-9583-a10db8d9d5d6@freebox.fr>
 <ZjBV+th9DmnNLhnN@hu-bjorande-lv.qualcomm.com> <8734r3qysm.fsf@kernel.org>
 <b6a1eadf-477d-48a8-bf39-ac3c3191e929@freebox.fr> <874jb9mu5t.fsf@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <874jb9mu5t.fsf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/05/2024 19:03, Kalle Valo wrote:

> Thanks. Please check that my modifications in the pending branch are
> correct:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=3aec20a8e797b28d32e75291cc070d5913bf6dab
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=df5b4bec31b0736a453d507762c5b3d098d5c733
> 
> I can freely edit commits in the pending branch, it's just a temporary
> branch for testing.

Looks good to me.

Bjorn, can you take patch 3 in your fix branch for msm?

Regards


