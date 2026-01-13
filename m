Return-Path: <devicetree+bounces-254596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E112D19B17
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F893301AE4A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F772E6CA8;
	Tue, 13 Jan 2026 15:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nWazay0W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R97/PjO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1891E2D374F
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316408; cv=none; b=UdnCv3qhqsmJcJDGXkh2P4+4CfgvI8lwWckt9G6BtUBocttyL1gWf7GiFAp1XPAemLjrGwoZWl9v7YF1qUdZUFv3TEdu4NQEuiq2odEkRz06133S1GAJbTBTo+3efkGxdXtU5CuYgcg3EnfSDf49bKb4pYsEhCZMg5KCwg5uFa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316408; c=relaxed/simple;
	bh=r5bVxz5fd5226yh5qcQYbAXqPX6xGUFlKgPtj0iHSHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ra/NzVjyFa1kc1AmfTI02A3W+xm6vCIWaKY33+lL2zTp/+TenZ1kP3P7zHEbcWcX/sChsJI8brfgOTaLf0gGUM+bob7CU0nPDoNq4nrUaghZh/MVGLWTi7A0ckiMBvRDy8JMJp1f6oR0mHmQ2ZeqATk46FqLeDvrfO6GZahDwiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nWazay0W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R97/PjO3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DCUfBw3809909
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ktm2n2UyqtKwdocxHv9UajYRbFEg/OQhxiByX9habIo=; b=nWazay0WqOMfywOg
	iGGBIxweKZ2XEeCo5orxLzaVrSuhlllOTp3FOrLPMzK7fnOTe2uf6BHRr6yup9X1
	qfboyLflN3qKpY6Rj4S/eqD5am/9AYafGo6BwVxxR/TNcEoDExhgs+SN+SoSxeZg
	JEQrZ2ERM/juSbZHn37MwoTzIVQGQ+HO7GtLeKT7mZFizIiqTb5s3rg2luN8QBD9
	wQBmpx31v9xh6ixBV+dmUJz3MS+snEmoUNM2fMryMMTuNJDsMDjRdt0p3bK3bgER
	yPnBFsjsBMHB/bvD5DK9lt7FJYyBfHeJgQUfBqv6FEyJOaO3dUDoaXf5eXs4RZBV
	ZhFOiA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng55sqwu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b222111167so137894285a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768316405; x=1768921205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ktm2n2UyqtKwdocxHv9UajYRbFEg/OQhxiByX9habIo=;
        b=R97/PjO3xwGCPyCBzY7iPAPN8SlWYDZOj7xyMx6QzzpBQNrdC/05HZHRAAHhjy/J9X
         6FtFR/SsG56mcyel243PWifVagD1y27EeWdwZnTY5x1WBoIePrL5QdWJmbFhv6OMC5mV
         D8IS8UKwUdoQE17WsOToOggmkw1ZpAHqgsNLnAB/uLL7GwMgwx5aSbw5kdvTmnyVfBwZ
         PdDCLhG6zjt4CF539bt4aNKQNfssTwTBU1T+7vowtIjnTibf9uX+PoWSfHwisZoe5h7n
         Cx7dv5iWazoyuK9jNo7da9ICzfaSmAObmshOUFmmb/2RHNhDG+dmr+L1tsh/PmNG+0tn
         htzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768316405; x=1768921205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktm2n2UyqtKwdocxHv9UajYRbFEg/OQhxiByX9habIo=;
        b=X2YCEgRhYImc2+0B6ta78QYxnJpKhe3fhlSZpgbQjYPlaJ6T3P8qziV/3PjlPswqIu
         KtttRwYZ60phNe1ie2OlU/ASfkXJbT1PvsTZGPR7xewuxYCYfb8ZkCNCktcLyw3DVbsF
         m0DTHwx2fCZPrwAdWZJDnnaGcLS+FZA9WeBYXwsaY48s2do2iAAm9xKzilVBbo3B59bu
         o/FpHHoZekFohmJhQrOkjTgpkC8C6Ky5cMvGLINQcvws2AucPGxPy/A+2WrtuplPLnOb
         YnM/P6fD9HjsdNN+jNwKcYtiynik3e/6s358/ylLazo7Id15ceewC3mnx3w3NDdspn/c
         x93A==
X-Forwarded-Encrypted: i=1; AJvYcCV73afaKa/NfBPGywiyc9SzD1xxRN5ItZPVSgSYjpaim0k/yShhlQJY7S3jRyNaIvIYOZGyWB/FizsU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz659coL1dFvi6Te9c7yOfQtoHxhFtGhXuM7wPysQ+EibdT7Yqo
	sbn9MD3QkYezXCtWv00Gh07lWqQeR4oXLCVii+wAuuwdBe40IRhSKxeDSpIEBEivVPgbLypHSwh
	RLQ+sApunAc/vlQrSbEU+8kFhQ/hcNN9VetTHVKwJrH+wjPdcmORsLGysoCM8XxuD
X-Gm-Gg: AY/fxX4kweRBpMkAgZ3ygAa9EyyQX1QYMMAs84+xA2C+Aq+Re3vlvNURY0CDuvtPPnL
	men4+PJwcxB1P3pO+0CMbXR7NeOqNwyTLZ7HS5oaZaLJ5fbKoCn+lRtZcfnb+bJHsM55iJMQ7Q4
	8m3znkReb9y4T9Zc04j6zXRUF3krKeC4eDcpofcPvS2Mp12NUsf2BSDIyjskL7mL/BO+ydg2BCC
	sFgYk5uz6JX5/TDx2xyv1yJqi8NHlmX2467H9pgXrMBMLUzRHTrn32GLeFaxw3PrWBBmZQE3w/w
	K+tOFYdiazatlHxyZeql+tUjOwvuY89y52DiUb3m6eH99JIeigzdqgwaZ+aofdREjz8KsUCIuYV
	EIgyumz4afEwV4jC+DxWCF7BWH/mSgSWG9IHpqNI0lOGn+2NYZLWbFDmovFk2K4FNRdU=
X-Received: by 2002:a05:620a:4620:b0:891:c59a:a9c0 with SMTP id af79cd13be357-8c389399eb0mr2130316885a.5.1768316405164;
        Tue, 13 Jan 2026 07:00:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdONpxl9J431dvGAQAnM9vO8ucFgCRI0lQsiVnjL5pNFyfzCrP0QoJRqVWlJoEgu22V8539Q==
X-Received: by 2002:a05:620a:4620:b0:891:c59a:a9c0 with SMTP id af79cd13be357-8c389399eb0mr2130311785a.5.1768316404422;
        Tue, 13 Jan 2026 07:00:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87099fcef6sm820866666b.22.2026.01.13.07.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 07:00:04 -0800 (PST)
Message-ID: <1fcb607d-f3dc-4dcb-b640-452eae750952@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 16:00:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] arm64: dts: qcom: qcs6490-rb3gen2: power on onboard
 uPD720201 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260109-rb3gen2-upd720201-v1-1-50d9b22dbc2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109-rb3gen2-upd720201-v1-1-50d9b22dbc2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZHDeqSXiNhkXN4lizOlkKFugs6WOuqDt
X-Proofpoint-ORIG-GUID: ZHDeqSXiNhkXN4lizOlkKFugs6WOuqDt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNiBTYWx0ZWRfX0JMG9f9GnvmL
 TUuJBQlKlteV9cpW6+gM9d3r2XZSzpycrdffd7cZiCqvRxy5xzkChzKkTSEKrlSr6IfQSgaLIaI
 kF6QpJu50mcgnc3uKsSJc8W3R57g2UwZ7YbKz9ZrRtLC47kPwc9U4RRvGQ1WxNNHzs/e+8wjGaO
 eChmSlNIeuB9KIZ+0T6v5FdDteM6e5zyUvnal3s+a6ni6BdAtTmb5qIf9+R8BkGrVs0qNt2RLvi
 2b8D7TfLL0ZyBLvjf95+u/7Q1j2ymk1UuTRQ0oE1IVG80tLgD0tcLOmxGl8rTEF5u2npXD6rwUz
 X1tyui/EDR3ZaEWBWgFFsbstTdtDMRAOODpov9k+C3suUkWFIqviUDOn17nO/mredlyNnmVp+WN
 uGOWgOaWa6BYpyP77j6siHcrU5PSY1UaUdXqA/CXub4s1DEGANFG0KVwPfwAH/gsjuiRXsmMIHF
 u7UNJzYl+hI2YfCXLmw==
X-Authority-Analysis: v=2.4 cv=IIsPywvG c=1 sm=1 tr=0 ts=69665df6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=v0cVDqjUyCw1FM0saaMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130126

On 1/9/26 4:30 PM, Dmitry Baryshkov wrote:
> One of ports of the TC9563 bridge is connected to the PCIe Renesas host
> controller. Specify the voltage regulator, powering on the USB host
> controller.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Note, with these changes I can't get the onboard hub / ASIX controller
> to work. Most likely those need to be powered on separately, but my
> quick attempts to do it failed up to now.
> ---

I assume it's connected to the switch?

Does it show up on the bus? What if if you rescan the bus manually?

Konrad

