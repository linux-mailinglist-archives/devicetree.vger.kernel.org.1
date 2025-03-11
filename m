Return-Path: <devicetree+bounces-156618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD32A5CD5E
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:11:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08EBB17CBC7
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E09263C77;
	Tue, 11 Mar 2025 18:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IA5jojoB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE482638BA
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716686; cv=none; b=T26sfSIutVu3XzbWOD0WkcaFmIn512uiwB5l/XdKzZbXgB0FeCIQnwC+C17/oLptbCZ9809nP5pPjXSFgwtM+OVMp57ndOzm47goAtsKgeNJAstVBHxAyHPyq2oXYhhfAsuqei2r8xZop1dUX8xpvn/6+4pNH0h9O1hv1O+n+vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716686; c=relaxed/simple;
	bh=BRd7+HtTtvaBFcdTTNSbCQPKzTGFFg/AS6THF+DAXJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=drD4YA4KWSsExi/ugnhKvkgwQgF08BW+mZ4zXSqglUG+fBR5aPsvQGQvu71H8hcyCr2D0Hcyi9TBrQlU9sehnSsyDVia5kAmrEChHeZcSiCEw0AnLcvOhhkbUs5UlTj/hKRzneQvFxrWSReg0khPjMhkTd5b+qu1QefOdT+SGS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IA5jojoB; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac297cbe017so20334166b.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741716683; x=1742321483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=imQlH5hLyEPyeFpcTG/nV9BIkwuBSyfjOhkAYwjO1MI=;
        b=IA5jojoB7fcbxyJpLQ9DKynZhmXSr7okK0sFzTXiezwpDvYUv+LwIT9U1B/prnNhan
         nqY2B7gF6qvo55Ra4izZ0u38iV18CQtOP5VL2ctyERrW0Q3Gbvj9AaujIHSGdir5OjSm
         rJQZYnB1fU4Bw1fcWoBNR8iDdIR3stvXU4ZyewnzMd4A/yPAqZ830fB4xAIJzUH7L8dL
         /pBcOn2xTOsm9fkEE1QDPLTaKEPJQAm3j9++nDwqmIlYZGOR2WBxuQ/S2RtkeJ9IZq/X
         Rv0YeFd5sF86/d61k474QMxQ4RmtEUoRFpOs967i88nUzUmsqPdcakqb6eQ4gEZvdwY+
         jcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741716683; x=1742321483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=imQlH5hLyEPyeFpcTG/nV9BIkwuBSyfjOhkAYwjO1MI=;
        b=RCw6BgWxur8ZGL3Uhpc9PwDbc32dPumIEgUcXjkBVMo+t1N2BpliStC5Ehn43owikf
         fF28pUvHlLXP9joNOBVyU8j9XiusOk8j5Abaixpi62o41KKb8uSTgTdj7EwtkeCMZuI0
         CLv18tFzOaiQQ+104sGeXZRHv0J21UdbkFQNzwqzUEhJFxAwo2f9UMFqvdX6o4WI5+D1
         pHGXckE6bll6HuadOx9pspGuKTF2Gt4E1sbZxka6VFNhK2NNkuHbItd7p12LwkQUEKTd
         SJBDc3Df9g+++hH8mXE6Zogx2vUh+tJ8Sg8Y2ENON4h77/W5AZqNkQue5x0bn2vXFxJ0
         ujgw==
X-Forwarded-Encrypted: i=1; AJvYcCWN3jxuvfQlpYzsIUQV3WSKbmfjGvnT+0iI4f9n7jPKuipJAvEUcM2+fTcRIEWTqk5jvtbDrxSJb4W5@vger.kernel.org
X-Gm-Message-State: AOJu0YyWCn/CafeebjG1Q5o3klFF+rVnX9NQDz5SQpyje68BQYxlvkM8
	ytGCprGuvRG8Advbv0smVz37kPanMOFfAo+XPqWOSLh3SoHPIwxPX+pYcHp0YqE=
X-Gm-Gg: ASbGncsGuAFn6VXZhTWkB1wQaj6/5dkEf7J9Wju1/D7C1ctkr3L2YNtAHWAbvhrBgSb
	b9cnkoUHCFCT/QMKOnzqSBt6lRrEw444BN2GYvtuoRdg4wqNHtkDoUYOgffUmPW1tpM6JYf9rLE
	pPSWVqX8v6/2OeXZMuZ6tcahzcUWAsN0GyJuDZe/JpccFvEtkpHXfYoMHPu7RjJGfGlkCWs2Tc5
	ypCp+uXZiY0EdbiuG6bP965TsgLoROKGSyI/lVKSERg/1fbI9C2TlJ3X2yOwm9R0Ib+lpeqoeh8
	LWpuMKQ1iE3dp/DGSP3KFkygSNuVxwHg4Dp+iBdlzm7deFYr6UlMFsLDoHRDV5LpTdMRB7/dbVp
	xf5IpphYsZppA3UJVxjJ/
X-Google-Smtp-Source: AGHT+IERTZ3nFwIDF0pC/Jsa9/UMytNY/0RkyK1in1I6p0biiBCy+0RcM+HnsMyf2YSwOxxQbZ6xSQ==
X-Received: by 2002:a17:907:2d0d:b0:abf:6e88:3a63 with SMTP id a640c23a62f3a-ac2ba4c7b97mr529724766b.9.1741716682967;
        Tue, 11 Mar 2025 11:11:22 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac288ffe157sm509101066b.132.2025.03.11.11.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 11:11:22 -0700 (PDT)
Message-ID: <b21b5f03-e328-4708-a854-1b3fa9c3dfa3@linaro.org>
Date: Tue, 11 Mar 2025 18:11:21 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] clk: qcom: Add support to attach multiple power
 domains in cc probe
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <CMTYKKilQJYeHUYYKvlqnwv4Q2P-58Ic1v1ndS9HQ8Yhq2xpHuNThibFDjXDEQ1PyNbx__f9BVBr0peoTUdvPg==@protonmail.internalid>
 <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <5a45fd25-74ed-46e3-b0e3-5adf92b5e9f7@linaro.org>
 <46d4f090-3e31-414f-abfc-3d1018913c56@linaro.org>
 <9e6fdcfe-3c6d-44c7-95a3-7652c0650bf4@linaro.org>
 <caa00d62-b24d-4db7-9e12-170a10c073e3@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <caa00d62-b24d-4db7-9e12-170a10c073e3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/03/2025 17:55, Vladimir Zapolskiy wrote:
> 
> I kindly ask to elaborate here.
> 
> This series does not touch CAMCC at all, and if the series touches CAMCC,
> then it changes DT ABI, which is objected. Or is it for some reason
> objected only for SM8550 and not for the other platforms? More information
> is needed.

No but it _should_ Vlad, that's the ask.

Both of these clock controllers will require this same change to be 
implemented, that's what I'm asking Jagadeesh to do.

Certainly that's the case for x1e and asking Jagadeesh to also check 
that for sm8650.

---
bod

