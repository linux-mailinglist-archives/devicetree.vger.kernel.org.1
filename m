Return-Path: <devicetree+bounces-244874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B39F3CA9EA1
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 108AB302786A
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2CB2690D5;
	Sat,  6 Dec 2025 02:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Si7Qznv2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zt2b+6zW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C43E258EE9
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764987969; cv=none; b=Y66lmyOVi5zu10i9+SKdU5RId/DwzNwUEiwh4fiRAoik+f3lec43DLohH2tL3gh1wSVQToSY/1T0LcsJZKezUGQSbI5zvCXz+UZB+MUE6AZVK8qP12k7maG0xt4tuUYCfFsEu7UiX2CXmgARgqS+WHEgiAJGZktjccHliCK9HQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764987969; c=relaxed/simple;
	bh=MqhGs1qxduKQSoiSkgcWKdSXZCg8mMlsDbdvtpgxxck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o+WYf8EqGatkfLh2t95cU1haAG0waWG+E0Hvog+alenKrYTTxJgZ6B5ZbJbU0vfsC0ggb+FqOeMMq3fxWJ05XyzZHubqcO4JiP/QKmr0BHn2+QA06J+5RQpyc/Yl2K4hsMel2+oQvlwNlifXSaSP+VJFpXCxWjoJCZXyBpmzGBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Si7Qznv2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zt2b+6zW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5K26tX1644614
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:26:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kj+JkVLe4NHXA10M5x5aCfKh
	3mIUou1FJnLXKG7p8Ek=; b=Si7Qznv2D7rfwREYtPQv3XE60atmLc6PGs3y/+HB
	3IpCffcJjNqspgVQzHQ0SSxvMzecxqXYBsOSvnjiJCcg3meMk1olOTZrqWhJIM6N
	FM4JUJAIn1B2RPZrsldwV7Zu2g7v4ePLyAK3m45E8xvoMqFhQD903mnbhfm8WADI
	zNYAjYJhzbFumlUKeIVweSWpZGZMAalmd9l9psundBEzvrQttljmeT5EZWfv3PiT
	ebLmk5AOBsk8v2WSZ3g9ewInZcE0K++DJOuLVuQup2EQTeJl6O7MvaRzEQc6/8f4
	voO73guNq7vti0qgyV5lzmMd5r1EE9XBp79te/hJDXa1CA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av62u0q8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:26:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b259f0da04so576689785a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764987965; x=1765592765; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kj+JkVLe4NHXA10M5x5aCfKh3mIUou1FJnLXKG7p8Ek=;
        b=Zt2b+6zWKQsNPx9xcg2D2/EFxvWBIzyVVmRHNUX+6droWzS9MnfU/k2Jwm5KDXMItv
         p97YyxPocDrKh1XUmouI+5yzdr2ek5g8FNnzeDTYAQGbz/kyX3+f35RSerNveBbsTJwE
         jODqqwFf1Ly7d/gq/Vj7UYjLtC0LSgOR4ckQCXM8YVEkXWK9cznTZrrczG3CWZz6wwR/
         ai9Eev6gYgwuzAKxaTal91EbJ7d85s7/mU//Ebr801A14KjHtY0AZ2/1njtVYxVNHtui
         UZ+88Ew6FkUCrBgHezIx8O0kTn3d3r8Y1J9U/8K6eB+L6rElCcYVl8HvR9/68Gzw48qv
         yzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764987965; x=1765592765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kj+JkVLe4NHXA10M5x5aCfKh3mIUou1FJnLXKG7p8Ek=;
        b=ColRiJ4ExUNTJZAnUcCvbj3uM/8XsQ6kEVk/HVpYVHR+po1ffIwhuLMYrYyT4JTu7g
         VEdPhW7NHRIVhwcdCCISvLhJq6WLZ6kf+bCZW4IfFPYcLiKP/eATYPCW3VcJ+wKGfK0r
         5aQKy0eZRkQ3R/xTZ1e7FQp/KOBcnMttwKTLzUAsqLEAgiUts6jMfmieNNubmR0bJ339
         eWtKe6vGYREl27oTqK5R6m10XN1L+A1Xf6UqdbeQfFsFc286d1XUOEAS6zdro4Xj2qNQ
         iU2Nzcxpc+GUcm1ltD3mw1CFVHbvG6irSoePhUO6cJ+KF9uP7oEdMIF1LipBmot7E3vN
         HemQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiSRn+1OowbqZcKzhWBO30zvpY8uzHfmECuqEX4NQnJhYqsMBLbV3sY5HV16e8UBeAxS0sRxyVl3pD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4C0yDTLS+McTMD9CnOGBzaox3gzYvYen7zKiebNWyNekykA1C
	bhGync3GC6pBlFQ4N9iOs1EiFb2bVsnhxzmLBgpBnutv/Bbj7M94X2PyE6yyhCOZpuVgZ3UJp26
	hJ3tahTeeEVGDdAWVsm2ePziWHrIHUybZqJdOlcjkLlGKCN7tcNBMk3ZAz+Vsnhz3
X-Gm-Gg: ASbGncvReYpkuwN8m1A/iLe4/ctoRvld3Vd5t40wygapUnPpyema3ApA8aOGnaCtJI8
	1IyRsHyCx1W4zDdHUjCriMB9HYajbnzwCFhkyC/J3ffZkZUALEsvlhzsBoO98B4TxqSv4kov7ym
	Hirb8SSFNljXE2FtVCDSUnzmXPRU/3809HkXr2s9Zb6vnfq1erCX84Ecb2atGrO0lSgE5xEvSjP
	MmfdosKPDZFpKIPz9oflMX9mAQN+sfIfNhsvhzEmQO6epGZHFxeFtbrA52zvkzQfeTqampz1HR6
	rcmuBTVuHJNCoV6s5u4Sczz9Q8GvraoahQi9BeJSSiE9QEyEDnAuqGtDUJwalAScYA7mt9K26Ne
	a4D3T/XkCPWCbu4iJt3rHZnlsAkc7jLeIr/2bVODXYzKGa/b4nowxNoOkQ1oHG3ZjyVLcW1VF/p
	soN6ArDrS+Fua2zlBMMZT4p+c=
X-Received: by 2002:a05:620a:7107:b0:893:1c7:4b with SMTP id af79cd13be357-8b6a25369ebmr198284185a.31.1764987965364;
        Fri, 05 Dec 2025 18:26:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEo47S/Ao1gsGym0DfLeSYhJEMj1JrY+A/SJJoulcUMV14qcvN7fbVZbhuq+l6aihmu+l/iMA==
X-Received: by 2002:a05:620a:7107:b0:893:1c7:4b with SMTP id af79cd13be357-8b6a25369ebmr198281785a.31.1764987964838;
        Fri, 05 Dec 2025 18:26:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e70595ff7sm18817431fa.30.2025.12.05.18.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:26:03 -0800 (PST)
Date: Sat, 6 Dec 2025 04:26:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v5 2/4] misc: fastrpc: Rename phys to dma_addr for clarity
Message-ID: <xefaz7ljox5drnf7gl4aymwp3cygc4fhxb3mksarqpjxm3ozrh@co4e4okm6hzf>
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-3-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202060628.1869967-3-kumari.pallavi@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vQ8cbZf7drbTQdsKksvznJSGibjxJTBv
X-Authority-Analysis: v=2.4 cv=VMPQXtPX c=1 sm=1 tr=0 ts=6933943e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0jdaQYcEcLoElLJ8wKEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxNyBTYWx0ZWRfX4svykYqQ+3S5
 +WRan9328YeKDu1JdsBZKa5dfhJbn3+bUnbjCBsdTMBerHSTejKglCa8+hVqITU9huSB3ZFKaFn
 TMJf8mvpRH+zdiZGZ2YzXL/cJOJv4qav4iOD9Rg66BZjymPDC4U18GCR2lczGZK/PhxHZDlLZoD
 YT9e5bLgvuRYFL9sO2uDO730inONuAOKmSwc2yVIaW2zwpgm1i1BW2kw3sEZ6xWAyvnvEaCeuxx
 8DR9nM8LSELjDR2/+dnE47/jloJ+m0fI+Lmq+Jfccou2HrPEb1C3ECWO80Enur3c8egDs1vMyw5
 hgT/O5YIl4b8A4IiAqLkzV2KF3ZDgvljBxuojyC4KZynWpBxJoXOOub8o8BVIyrMvvcGZClXxeN
 j5XRpFHcgBHMHTp7FKgRM7na+lMtTw==
X-Proofpoint-GUID: vQ8cbZf7drbTQdsKksvznJSGibjxJTBv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060017

On Tue, Dec 02, 2025 at 11:36:26AM +0530, Kumari Pallavi wrote:
> Update all references of buf->phys and map->phys to buf->dma_addr and
> map->dma_addr to accurately represent that these fields store DMA
> addresses, not physical addresses. This change improves code clarity
> and aligns with kernel conventions for dma_addr_t usage.

Please _start_ by describing the problem or the issue the patch is
trying to solve.

> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 77 ++++++++++++++++++++++--------------------
>  1 file changed, 41 insertions(+), 36 deletions(-)
> 

-- 
With best wishes
Dmitry

