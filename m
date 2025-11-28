Return-Path: <devicetree+bounces-242974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F5C91C67
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:18:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A70C14E3F30
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1611930CD81;
	Fri, 28 Nov 2025 11:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QLsb+Npl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HC/M+abU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A4123E325
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328706; cv=none; b=hlqH9egeZfoi5cYxkmhdJvz34r6IhLdp/S753IHWesGpxkoovJXmrK292JchSWSGT51NtEeELvmUbcY0g+EZIuCDOJQjHkzWmALjN1RMgCvWQ0/4T3uNaeeyqLehrvhrH7rsje4YoR2DelAZMZjopDFw9odWsOHqEO40i2CJ/So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328706; c=relaxed/simple;
	bh=YCc1+UgPiuXJvX0TVpusAfBmkPlFfpSHgkcHG6WYdBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vCmwSOUrukBeZpMV5BGGUhI9vzL5KUzrdONiX9tLx7KXrKqHsR3lDF1fs7dzdhfh/KRGTYe5anhA7Rts1DSk2vAMp+ZyArgMERxahSissKPI1zgc44o3e3rG6xGAMnY5Ioe3H/LoiWOhMCrckluwpuNHitPWKNAa3xLI/ziPv4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QLsb+Npl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HC/M+abU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8PYmT3797569
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:18:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AV3c2aAbHyk24KKPKA36/3/W8ooHQXQQioPdhszcSSw=; b=QLsb+NpleYwbZm9F
	uvaqS2aG6rT+jFVsqmrYZaMj5WNJHW+4uRRT1ShYq5xCHeTAtW9QJ3k0wu+s1fbs
	dXlkqCcvGHNHpPg20A5gerlmjiWSwM23TwYElpjc/9T25ee4RzsP9UPbAvAsk2mD
	YcK3nZ8qczUwe4WIRnZA+zPAqJOxi3hNIV9xNhawku++fI58zVNVafZ8cuJeRgF2
	S4jW8wfY6B9WB8rQPWdmhAIUCL9X5tDWMjKIsHi57y9pTRJulXTwBj3YXm9y+l03
	2zoPK0uV5lAZNXmrL9xr7r2wfJkBKgRJcejhdckn0ty21BPqRrZ0jAD2m05gx8MJ
	leD1iQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apnudaxpu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:18:23 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88653c1bab5so4017326d6.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764328703; x=1764933503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AV3c2aAbHyk24KKPKA36/3/W8ooHQXQQioPdhszcSSw=;
        b=HC/M+abUK83dF3UX4KtvadqYFn8ALdIZva2WkGypxxfrBHv344x7HUEJnkS4rC+1eK
         BH+WNsrWB7hK4qbXcUhQU6Q7+92aHHy3xHs2NBWCPgdLjQdnXKbuhbjNwWA5hNPjgibE
         eG11LST7ywcWOu44N1e/hxA7erPa/cYrqdp6ILt+2dqLRq8PbH+X30AcKiWD9bUR3jsR
         f/8qcFpRyknyhvixcqFId3kJ9aS64fREQzAbWvA54RJdBY+7iaNs9gE9m0z6EqROGQR9
         g00vTvVyM7bn/3BCF75fk/o+gpNS6KaZgIasWU/yW51u1RA2TlEN2rx5KW0PIFPwNK6y
         SxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764328703; x=1764933503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AV3c2aAbHyk24KKPKA36/3/W8ooHQXQQioPdhszcSSw=;
        b=YgsAJcl0O4MJvW6OYb3AXVhhG1U+YQRjKfINCZAWXva+hYK1FSvR7FsmUCCF0z3xHd
         Sm/tA/TMatIHjgvHFKpGmIon7V45v+wqmVmwrAi1DTvVBRo54+CxTwiUqMbf8gxs3kPI
         YGMaLnURaGbdi6y/PWdM+5H4JWftMt+Tb+OH3EjdiwcjcaU9EeWWWvWEPyLPqP75mJLw
         pJBkAl5y0Arm0wJQ2NjSKLo8aupGFLyyh+vYmhab9nIeLmWwAz01xzR2WjaIQZtrW2Ft
         EZZs7bG3VrSBFthwBo+H4cLJJ7VJas8GZctugMjKzO1tCPtCjD7IzmfHQj3yD7bdCI9K
         xZsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuTUksXvYeRERoqa4eAXKtpE3Tp55PAtIkgPjWNJk7ipbixlMD2OUP6kq1uP62+gE6qHYdMSvlrohH@vger.kernel.org
X-Gm-Message-State: AOJu0YwYUNQCzmIfvLjLxOqBe1VGCvf07NglkRtvX29BdvhL15xvgh8G
	hf1g2NirlRJ2nOoPOAjP31/b/xgwjcuNN2df4IMw3nu9kteyo2i6zHz0tkB9bMLZqTBkUx9Shvr
	2o9PC9NICY2n1VASYhitddrOf8wqSnGnx9TN0sSR4L9ru/4fsc+wdmUgMqP/IjBAzCC7Glc9i
X-Gm-Gg: ASbGncs1R7a/xMUGCEl3f1kcUOHr8f34Na1zt+x0/iDVfSRogXkkZWD3xLor9Ifop3f
	b7/eTxPna8t2FG8Ppq7fnXkMjX/XmgW1+9cL8QBtaKcEKynIg2ZISpp/OD2xiFqqdnrwxxy57JG
	ZSAQ3QrXpu0xBKLhl/hbxfvRRbO/dwTLn/hpJrG4FJ2YqTjia39AQZ4IUzXXpsiA/C4VFZiO2xj
	MLFCcz4emADW1hKLQwn5ffcloUTEULO0yJVxhxyxMD2p4sStX5MZlIVg66E9y3jQFASpE+xrEu3
	uVx8CKXAij7l5aXULCQRVS9Nsb3YpS8MCN0GsToI4rXsETP/yh+s6ZkwLAb5vEEBoaPl5+C0bpn
	XYrWdzt89/28J/7teTUiUNCwvE/UXu4cy4XD83H5k9DhznaVrnblns5DqjP+WzJrdwtc=
X-Received: by 2002:ac8:7f46:0:b0:4ed:616f:3cee with SMTP id d75a77b69052e-4ee5b743cd2mr253381161cf.4.1764328702635;
        Fri, 28 Nov 2025 03:18:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHj1H6DQWuhx4oQp0mbbzPy86iehPS7VlROaDciGm7xcRUUcuSKijkMWZdCff3nA3UKriXdwg==
X-Received: by 2002:ac8:7f46:0:b0:4ed:616f:3cee with SMTP id d75a77b69052e-4ee5b743cd2mr253380891cf.4.1764328702200;
        Fri, 28 Nov 2025 03:18:22 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90d45sm4099314a12.8.2025.11.28.03.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:18:20 -0800 (PST)
Message-ID: <17f8caf3-10b4-4397-80d6-72cb7e076f51@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:18:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Add GPR node, audio
 services, and MI2S1 TLMM pins
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251125033311.254869-1-le.qi@oss.qualcomm.com>
 <20251125033311.254869-2-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125033311.254869-2-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EaNflPHoV733CdoX7kSDJvWF4TyhvTGG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MiBTYWx0ZWRfXwn6DhMOYqoxJ
 r5n90j95WvXyTOgATCb+okTadSP0gN/FhHvn3tbTfpjNRTrgZ1XRq6YnCPEVMyEMdWZVLvRBSzh
 Z6oX605zrcTxABmjqA7/YZ+Rcn9E/vEnxcAjRIHYdK0h9QkdOyhBDiY27PykVt2amyK8rAC/BhT
 Mt+vACFy6r4JhUOGLWKAdLhqaN8KBZkauLZ0vXt0AaKQQ7bWzy8ExnsaSjb2HHf4liReX3Y/UHS
 qmWAM5Ve74184/CAwdPCb+273Q93w0hHlZgdKhkY2S/1QHhox6wpLT2Wwfbnq2mI9gdjQ9F3iI5
 hqlUuHy8L6ZAxbMJ+9G4+9DvRWxroPzVAtTVB6uQQh8IhLaL5578HMBwnT5EcW+YbCatch53PhZ
 MFvfZfkRNiqv1rmCvqlOaP/ETr4ItQ==
X-Proofpoint-ORIG-GUID: EaNflPHoV733CdoX7kSDJvWF4TyhvTGG
X-Authority-Analysis: v=2.4 cv=MKNtWcZl c=1 sm=1 tr=0 ts=692984ff cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oAnFxF7TWIMXTAyBLVcA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280082

On 11/25/25 4:33 AM, Le Qi wrote:
> This patch adds the Generic Pack Router (GPR) node together with
> Audio Process Manager (APM) and Proxy Resource Manager (PRM)
> audio service nodes to the Talos device tree description.
> 
> It also introduces MI2S1 pinctrl states for data0, data1, sck,
> and ws lines, grouped into a single entry at the SoC-level DTSI
> for better reuse and clarity.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

