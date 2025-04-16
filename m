Return-Path: <devicetree+bounces-167841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8DFA90735
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:02:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BE29189D6B3
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3C11FCFF8;
	Wed, 16 Apr 2025 15:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DKEN7RTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58C51FC0ED
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815719; cv=none; b=oQhxohj6WDymvFfpjQd29Il4QvVPDkIt1kHATQzRgHaBh0pIvqemJJbPIbdplU6GBo3WYb8/Dexp8nRHlVpeB6mEKJqK/Rc1nI6SYfa17kyWsZrTQOT38jGheZ4R+chEfLZqV/4OYdX8mgh9RbVOXa8K8EI1eHmNP61U9WeN+HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815719; c=relaxed/simple;
	bh=q+pwn+mTg05s/EzUlLJnkTpgVmwJvA1ZdeBL481JB0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tDPdtXfMy/m/8vey03BIRzFnErQXoiqInZUQZQ6cqZy0Y4Ob8rmg0gW7urllHkMGJW/4bQl/dmIpkjHwmd7Q9xNMXYDo0UDqKml77ye0IT0sKHWn2YP782i+f6dJMDCPEAFxIJP2UC3TxJ4Q+eJEHGW182Nt/F64fuDQhz1mmrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DKEN7RTJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9nPwe026659
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:01:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OFYziKxJG8xVp8i/T0EL0nwln/WDTU0Zw36EWWYoZO4=; b=DKEN7RTJjU9VBohb
	anNsJDKr7ZDtUfG6uNu/AeBNJWGyFJPY5IhYhEiOiTXEAC9nw3p3gqeeyDr76b0W
	sN1vX86hjGt6GigKL4hpPMzMB+HFvnM/yDydln81AFW0JOowo3sGQjjpLJgV4oNV
	dSCDnL4U9RM/VAn+NXsDnw4DcKVZnnOTJvq6d/TOMGJoABXFOT8ERg9OGpASGmBW
	tq0jHEqGau+v9N/J7vU1DAUWcTV26HaVl6MaWkNO+7/ZnzSV7m6LGhKQlhR3uGGp
	2yhlV+EgVoKOY1i4Bj3Z1Lpz6Yt92XRJNV/l6n5kHjjd2s8C+42R3STnIwsTKmRh
	GFX6VQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvjc3f6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:01:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fec7ab4dso14175566d6.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815714; x=1745420514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFYziKxJG8xVp8i/T0EL0nwln/WDTU0Zw36EWWYoZO4=;
        b=jPgrWh5u3E+IDk+MYKM1duTKQGmpcSp3743Ht0NtHZ+kNaBkQx/2dNlnxUQq3FyVZx
         KCif8jRpzvLsbLnvFMzGLIu0RkzqfF2/J3jb32i7DLrc65ZyNzrDcimjZFI38Eq+sIIn
         nlr+KGAbue9FEXtGqy1RPdu2OmMM+h2PUBlSXlguLCGW0kNFxdJGnvwLkFq1wBsRNjVd
         lDMZn10GMrL87GBG/VO03wOd0R7wt2fnGe6hC8KzwLiy0e1byRS5gAhconkDcIC9Ujd6
         23wl+FJPvNHjZnzxeIA4K2XzGQCWem4pNA6MFfcNzAuk6iOGMIRLqgp+kDa7ed3khSFh
         YYfA==
X-Forwarded-Encrypted: i=1; AJvYcCUzaLJ7BeqxHL1QbbG60HjlwA/n33BhVvC26vpmY/ALJZtpfCCN4IqHcZYvs1DeehDvMQdv8xKhO0rO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxss+CkeLpzjbzsoZ+qJa+fNftUSS1WrfNKn4jmnYlCOWCJvQOP
	0Lq8O8+xTmOWv00mXtEffp91UKQKUgwyE4+EJ8iv+4TMOSgVS+2lWcguZxmfzz2VZWq0tbhodsN
	5H6u4iQTMqesoeoJODEVQ06Dto+E6+LTpnNUw6YYKOXeduKoGHSLy0PJGVBwn
X-Gm-Gg: ASbGncu4mt8Hq4CMbdtl76NucoM4/cwBGjrNphlkSwhKbHXanY2jHOtwt5kDUDmGqrX
	c8StxFH3yth0x2nrDu4XFD1SFtaG771Feo6Ii9aM43wRM9sCu2vwaZpTauYejzUqZ4O0Dl9vAne
	/AVmmTAZuSYH2ExzUi3s1BHDMHUlmGgqnISCZkbQC4fRr24AQ+yjmAr2WK4Gb5ba90O/gS5r56X
	eOxsel1p+Ga5ifBso9noVJIyHeGFmx9HJZrh2XrvCv8wKjz2nyptP65e6Vv2FAOAG9HVRifb3rS
	jyUFw1hWbwM4l97B432Hmh+3J10pehl1Q+V99ERoXAaDt4s0EMF2F/bfdTqb0P/Pq3Q=
X-Received: by 2002:a05:6214:2386:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6f2b2f5707dmr12167636d6.5.1744815714462;
        Wed, 16 Apr 2025 08:01:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELlRZxT4JGjUFMDcyO4UGKfpFEuuZ1EimZ1MIk+XizDS3GTqyqLgfM+L0mkHYpw7kfYzTbdA==
X-Received: by 2002:a05:6214:2386:b0:6e8:9f7e:8116 with SMTP id 6a1803df08f44-6f2b2f5707dmr12167276d6.5.1744815713910;
        Wed, 16 Apr 2025 08:01:53 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cd6257bsm143250266b.13.2025.04.16.08.01.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 08:01:53 -0700 (PDT)
Message-ID: <9f09d4db-b586-4a9f-b15c-6cc2a8af2934@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 17:01:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/2] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250416122538.2953658-1-quic_mmanikan@quicinc.com>
 <20250416122538.2953658-2-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416122538.2953658-2-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67ffc664 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=wBC3ykCyNm9gZvjdBcsA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: roCWWxaOwXbPRnJJrWsGCOnAWGQ6OgI3
X-Proofpoint-ORIG-GUID: roCWWxaOwXbPRnJJrWsGCOnAWGQ6OgI3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=923
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160123

On 4/16/25 2:25 PM, Manikanta Mylavarapu wrote:
> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

