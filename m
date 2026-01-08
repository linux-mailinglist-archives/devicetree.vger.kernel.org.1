Return-Path: <devicetree+bounces-252850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 771C0D03660
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8D2F313751B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845284C5F4A;
	Thu,  8 Jan 2026 14:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJ+sVKVU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FrB6L0hG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5837A4BDEAC
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881001; cv=none; b=WL71fuPTSzsrsuEnbipXgSeWKua9qDQbPHA66sFwFp50NRhpUcEIKxpfWqhUK2YUwEaAB75BEA33dcaeoaSWGRLSSsczs7SZf8H/VdDNNjf5mwknHZ7o/G56e8ZRAcigtTqnyWUrtWcqmynxeHdKExT0TUC9/YjTH5j5FJM5Fbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881001; c=relaxed/simple;
	bh=O39RT4mKZRaavt/btcDjvj1hMxrekOAFfr/h4cMIwOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WCUG2z1C4I5GMrb6mj7LDo+oW1faTcjfAJUj+/Dtu8nttI4yW7JzIkcW+TxLCtVpqgcM3Ubc69F+WTThI+H5OyafsR/W5HPp4vyAVdI7xZt//Rneb70zF8SNoARZVZJ/9YeM4ylkbvk61AniK17ckCXuScwMyMa7hMFLrFDHhiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJ+sVKVU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FrB6L0hG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608B35FE1971438
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 14:03:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/rikJvWWJcqzvlAQE9QpGvX0S3pzPLa+z+Q2zk4Dv4w=; b=gJ+sVKVUwlk6O/GS
	GysaPtQM6AwluJeSO20A4Qg6+IxWEInxm+0MYFmOIH2/pK21B0yRov2s+9hYVKF3
	tHRJl+Bmv8h0OxMh6aqqwT6IRomDfEWzd/Snpttjh0ON22rFloiXruwiHuZb0zVc
	1n6gcEXQZ7k5Vqw7xNJVYphi7uyvl6SLT3WYGVkn+Xgtaruc2dyvDTEjUGi3dWQk
	U6H9Ov2piSCt97TOPINJKjT/Z26SaRvPoWKQ3Bmnoam78p0I5U4QvsvxEO6bbzyy
	SWUC/iV/hHGFHzB0fqkN25Zyd9IIh0SDZxUwQ+FtQeDNqY8EI0xd/CJdKprELTVh
	iS8UBw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjbc4rgbb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 14:03:18 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-657486eb435so5803674eaf.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767880997; x=1768485797; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/rikJvWWJcqzvlAQE9QpGvX0S3pzPLa+z+Q2zk4Dv4w=;
        b=FrB6L0hG59Owt356Yhcn+nYhDZW24eR0KJjII+OmXwoeQFP+Ze6Jl+nE6HohJn/z8O
         4Qeq11X7VIu9fRvipftajCwsvRaUoMBrk5nd6Zx8Cz9RAFRNzSksEcmx3A6t9aGJ07GR
         0pJYFJRVBSnJKjvRsgEsQ/952NJVUYTz3hjxgiqb/flPTxf0IiXOrVM7aHPqjedTZa/b
         zZzbvoMgG3BFkPZfAVUYSQg0PweIoxbl7ZNDn7CkU6drcAqGrWqC/6PWfHFHd53uynQc
         AaePr/65+sy2nMfm/DspIW70xVsRrbB6w0H/MnHkw44sC5umQ+uGyEIsBhzzQFdvsaRz
         uQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767880997; x=1768485797;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rikJvWWJcqzvlAQE9QpGvX0S3pzPLa+z+Q2zk4Dv4w=;
        b=VzXWKp7BwLgneb9JvTlzUluDtWpwYwOOcdQOhQh/WQqvQCYqsSwewbkPO+Q9oAvTK2
         ZJyOuP5OrKTrXELm9JFmMN/OJry7grCuDpGY5GKeE3MUHPyW3XiV59araBc8Wd7JFjnH
         r7fZ36YDtJdjOjgJT7lptO8a+V6pgCrNZj69KwQDEaIg3Td24cWK830U4AdRGy8zy5uR
         tcRsoI4Xi3wQphYJZmn4jv4Dq7Z1ZAgdCX3pVdtPXQ8d3u1SXtDy3ZREPt22I/Nel1Up
         8qYQDr1cli/qAHeAoKKuJSUUaqlrT4Li/CQefgS4GYDJCUCnl9SaxKmcD2H6UQe4vjgJ
         ykMg==
X-Forwarded-Encrypted: i=1; AJvYcCX8LN8nTIVLsDQgSJF99UN1Dj7QsU49FDMJOfb0TdSHczlelj/4SoU4eCKLHOELwn0reAWmTo0GeAMO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywih2RHSQZmsh3M2Tw8Tnk6m5LCSU1GLSr6DW7/iITcnohrjjlP
	y9IXjnLM5tLOYc1GMeXEB5HlzwGBIa4OGSYzW06gJt1snngroyqvOoURFlHoo9ZTzkK2Wtk8sMw
	to65zTvUDxXsVUFZbawk3mjwvchrNMwqzjoJCpifS+/iWL4lIkx51z9jWgyULmfEm
X-Gm-Gg: AY/fxX5Bw+fFqdjIQwNLL6KkpMSFcWFIfSTYSTTBxS8UT7UtVDPX//wjwLbmgyldEHE
	GhitUgYNTxp60MQGQcIKnhSQkjekWJUnwXg6RKksSQTl63ZguF3aJ0vRhrFZVU5t2WCqJPfVGkG
	H8rvp6zgrgW+wcqmje1TI0MVCg6Cs3xkIoRN+F0phByzmvEWIJX3rR2dPOvQvZ9EKpZscp0sb1U
	+IgoQLv5IOu5AL6IjQvC8MWMMfFW+FDZMIdT6EbjejS1X4IV51wpMovQr9kt1yWWscFTO1CWBrJ
	IK52rBQ2TS4dRd//3PQOarlvuBwHm0cdXET7tkxE6/v0qm7u04HPM1C5/IQdw8hhLHg4qf0BXn2
	sBbDVrR4ivSLJu40ixiT1yQSBvu8TQrYlB3kJ6Yhp4H++DutyMwAoCGr8SGKb9TkF4P5+NtUoOB
	vr5P9DDzqQ7fbGlNKcWEUO5KE=
X-Received: by 2002:a05:6820:618c:b0:65d:829:bad3 with SMTP id 006d021491bc7-65f550a39a8mr1747773eaf.60.1767880997402;
        Thu, 08 Jan 2026 06:03:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfyQcszuRRVSI6qdE95keUSR8R2mGsIFOnBdHxqgA3t+DEGEa/dLp6DleIwZNy5fV0t5UNMA==
X-Received: by 2002:a05:6820:618c:b0:65d:829:bad3 with SMTP id 006d021491bc7-65f550a39a8mr1747718eaf.60.1767880995427;
        Thu, 08 Jan 2026 06:03:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b717e7f34sm1150193e87.61.2026.01.08.06.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:03:13 -0800 (PST)
Date: Thu, 8 Jan 2026 16:03:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
Message-ID: <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: qGt_UuKej3J2MraWFdfpbV18ds4x__c2
X-Proofpoint-GUID: qGt_UuKej3J2MraWFdfpbV18ds4x__c2
X-Authority-Analysis: v=2.4 cv=fdegCkQF c=1 sm=1 tr=0 ts=695fb926 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=U-AYQkQNoRZMNvosi9oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEwMCBTYWx0ZWRfX6uCHJStTtCZc
 dvsRAcE3uosi2SaVMiuCEuNScG9fUmpK8uw2XQIYNZnVf9j8cXELhlQXpjIUNe2FWFgU3vI7+C5
 U8Q5WUUQBlbFLX5O21It3n79jA7FXoHGovx9NLeBlmK9S5aIUdO8nQWce7jNRID49aSsi+6Elhr
 63r8qhyz7DrARB/Xb+5BWxyzxTwRIQ7RPRXt1fpC01QvjzsF5k2YPCIShHW6/Qeo4a4HeE224rg
 5vGoJtQyn2CuiCU6Texom6lHh88oA+NOZ63Ny4aYXZgfgsUygC2gShs03rT4+XlrNNiD2CZuaft
 //Wi/b2L9lxWbOnEZJ+TR3lUQsJrGiieoxhO/sci8QR/KuSlyDu1B1AF2yU+7+2DggmP2G8lI0c
 jXxcRAhNRuoU7OSERrVlLTg8N31CYVLWJa2YAl+vgMCoJ6LMsnJXBjA5pqZ5IhVog/dj6N33JPP
 tDHGC3NyGCMTP74C7BA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080100

On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
> The controller is connected via SPI3 and uses a 40 MHz oscillator.
> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
> Normal mode during boot.

The main question is: what is so different between RB3 Gen2 and previous
RB boards which also incorporated this CAN controller? Are there any
board differences or is it that nobody tested the CAN beforehand?

> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 30 ++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

-- 
With best wishes
Dmitry

