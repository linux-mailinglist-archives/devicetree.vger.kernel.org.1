Return-Path: <devicetree+bounces-218791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AF3B84156
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF7991B20804
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 10:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E7F2F2914;
	Thu, 18 Sep 2025 10:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xj8+bJON"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430472BEC32
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758191240; cv=none; b=u1fUONDCZoJ+BE74jbBHKAGGmgfUvgeqhco+0XDlloYyJepAMYBPN8l4ms9ZOCyvmxf1pyT+yujLQ7OSvSExNJIrMg9pBL6bEyjVR9r1crIxkX6kl4du1ipXU2+gv/VSTViLFWZRzQD7sKbW3WWhycr+cfS6Gf184/yNFeZHN0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758191240; c=relaxed/simple;
	bh=SFFv6NEMjbrj0MqTLSIDkcH/Ec5UzdpQKT06CrRKoh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jQ/qpeWX/ukopnzDEBox5lFncii1BHud/BGBBNG0s7J4ILKOIc125Rx+oUGPt5HA9LYgrgFndW2C8dgqcKk85/LNDprCvi2lKCVa6C5lGM9GmTGe32FHkRpA67OtiKmxeX4gHSqWMlwzD6wrnVgjUS7G8VZ3HQhv//9OoPzaoHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xj8+bJON; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I89Gn9004305
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:27:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SFFv6NEMjbrj0MqTLSIDkcH/Ec5UzdpQKT06CrRKoh4=; b=Xj8+bJON4h6M4tex
	eud08TlmICVdM46C3Tno3WLRmkhsbNqhTgCberXdpoMD14nQHmlRgjlnHEXKF/2r
	S+J8P8/fiV2JZRB6IsymMfqP7fIVxiS7amroKAScOlJUSy1NJomH6IwwfhRqqgj9
	pOsgXIDONGDPuCe7kEo5WyIhMMCjdyDa4Fwe0bV06eO3TXlDh0HbWW7J6QFnh2tc
	5aR5Xo9CkpAv6qyLtcM8feBGEi3aXP90Yd1yJtKNHZXBbljdopXYR3CgO/pfLQXD
	RH6tVxKP7ZDMibIcy25K4HSl0x5HyrBVpYvDWcSssdxiUbcI1LEFF3zkxLigFthH
	+eP9Bw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqgufy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:27:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-82aa446f7f2so20085785a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758191237; x=1758796037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFFv6NEMjbrj0MqTLSIDkcH/Ec5UzdpQKT06CrRKoh4=;
        b=nVqxj3LwvwML2s8jmcTTvdZR3NcLVrwstpkSFtBsHaM3PXkvQnS5/FG7Fyddzf+iFD
         lTUXRQLMTUpZbUiJnWJrmaO4Y7thT0B4leC/2S0A2H6o/CrC5zUaSCRezdEiCfbUY2RP
         /zNcd1Ro8jNeHIpwILSiafukelP+pyX6Dm20wf+YSPIi3LrSA7hLOFf/YM3ByZBpcWOB
         4C0J03Ixg6d6szqevHW2qt2GjXLRpzXaRw/kyPBiEQ9cYFyDXZNCCO93KvSGGcCla9w7
         xaPs3fFwQ5m4P2mVIbokHSauYHCy5F9k39NMdR5q5GaME1fCxrBxIU2HG2LKvq3zKaJ1
         xtaA==
X-Forwarded-Encrypted: i=1; AJvYcCU2rZhfWyp/WeQL8tO+l7R2MjR1VGqJMCwb4u76uPPs8IbK1MtqOQcEmADhiTluBT4ucvMl+L+OS2TB@vger.kernel.org
X-Gm-Message-State: AOJu0YxqQXuj7m7YqHKLKfN5wS1SBX6m6BVvkfqPaqce44c2IaHkOyru
	8Hjs5h9skvKFI2fEqjlCso9uWPl0Dr1FVjukRWJGiFS/yvM0yP9FspwD0pRrAuPyrt9KQOqub/Y
	hlZ4zF2qWOn1Ns4GImb3vUSawcAZ0OH4+RfilCsEr0bAw7PeEzbbmHFphwY80/CZt
X-Gm-Gg: ASbGncuh3B2UHNSaH6iHiBkQI+YzY0u5niKLCg1Aie5fc6DoDA5QrZ+lbNcZ49r6Sm4
	+XCgpE5/97xbfvj0se6jYYZK4yAn3xv6Fo7ka8fjcJHkWqw3KZXyThNXKX8VBY1wKwRkmmlMx7z
	9+rf+av+F6sz/A/AmdLihESnVTdXAQJ7aT9u85Liop8JEkU3W15M4XQK8NyQotl8m7Q5f7zHJna
	/tUavHTF5AlLYuroFuYAi5F2QUaZzsYXgKSev29wiyVWKkdEW7ZhZE0bw0Ta1d06T/SRnPZ+Qyo
	rQXek6k9zNctOWErJQpukHYLATVmBE/qy3tb8Cfo/I7433/Zrark6YAYsWfaY6hIi84i96zF4Xv
	SGfSdNy+6agLk+r7vfTM75w==
X-Received: by 2002:a05:6214:519b:b0:795:c55c:87de with SMTP id 6a1803df08f44-795c55c8cffmr4039536d6.5.1758191237102;
        Thu, 18 Sep 2025 03:27:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYzlJJuyXGduZqx5WCoB3OgJz/oYERgYQ1D6+IglQ8GmpT3KQfYFFrtxzVLToClE/f0NfFbA==
X-Received: by 2002:a05:6214:519b:b0:795:c55c:87de with SMTP id 6a1803df08f44-795c55c8cffmr4039366d6.5.1758191236525;
        Thu, 18 Sep 2025 03:27:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa5d1a89esm1217938a12.16.2025.09.18.03.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 03:27:15 -0700 (PDT)
Message-ID: <c5d5c026-3240-4828-b9b3-455f057fb041@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 12:27:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dma: qcom: bam_dma: Fix command element mask field
 for BAM v1.6.0+
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250918094017.3844338-1-quic_mdalam@quicinc.com>
 <20250918094017.3844338-4-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918094017.3844338-4-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XFRHyWU5TactH8M7NZgDsgZmfto2IRJn
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cbde86 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=MmGnNXLGTzfTIO6JWNsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: XFRHyWU5TactH8M7NZgDsgZmfto2IRJn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfX8q7t0Is0mkgR
 u6mxGMVWfKiMey1Cg0EIbJk7AL1f3H33hCksB0mNqArglV3VZYtB5GUXpqhgPeOFA1FrhXE7wqa
 KpK1SAYATyTftQtQCz2Vh0ZjReppehPz1zD9yshJsgxk2fihrTJEWegO3NYEpaQTcmmdwPoTlx7
 JOyKyGQef4yFDNkMTzgmvmop3/vFBia8oaESpxcOEw7TTdP98qMWXyWVcSY7E8hDL+SXQBhxIZf
 Ri1v1QQxMkRBwb8083zr+9SsKmzBJc4ecUCWfKVsgbuNdxqgSUKtieKJ2lP2rRYDP58806Z8PJr
 svmQ9rV6L2FpqVTGn+H4qRbDkksiXNM7y0eU5gOQFx55y/FwIHE0HZv7vIpdGE9jEAeZnON4quX
 TEfMWQ60
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On 9/18/25 11:40 AM, Md Sadre Alam wrote:
> BAM version 1.6.0 and later changed the behavior of the mask field in
> command elements for read operations. In newer BAM versions, the mask
> field for read commands contains the upper 4 bits of the destination
> address to support 36-bit addressing, while for write commands it
> continues to function as a traditional write mask.

So the hardware can read from higher addresses but not write to them?

Plus, you didn't explain what the mask register does on BAM <1.6.0.
If it really masks the address, all reads will now point to 0x0

Konrad


