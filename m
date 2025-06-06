Return-Path: <devicetree+bounces-183235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B9FACFC8C
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 08:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D17F7A8264
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 06:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7031624DFF4;
	Fri,  6 Jun 2025 06:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aw51M0gK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF83211A28
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 06:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749191146; cv=none; b=fAlCF7kGNJCaFPiz70xhvt46xRYysnR6z6dB9Ypn+WDTUctatcNIeFd6pI+xsqfPmrCTZpnSfYPj6BBiu7nClTOcntnnzWy0mEZhjAiahzcQ6AQEPd2OxXtHznZ/NQiBJQzAmpgmZGVm5UNxlOuCH5aW+AasiKzszPyIC6d8c0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749191146; c=relaxed/simple;
	bh=0VpfxtmCgm8EONY7kqxEBvyTvTG61ATvEPB0aU8y8q0=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=E45V9pylnyqIhqGGwuiNpodwStEpS1tW73C4eTb7+k3MNi4tU//ufzGJ/x9zPRmsZiLSQ++PrJq9Ey+sUpeMnS80kmDaMn2f+/HXQuZP2LKsfsEoT9MBw9CGu2UNfiSGYpb6WQ4VDgNIE/xNkYl6YeCLCHjFKLh+fKovN4iSKeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aw51M0gK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 555HPEwG027289
	for <devicetree@vger.kernel.org>; Fri, 6 Jun 2025 06:25:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=v7gKZGrusJQeegBsEU3P4m
	a4FsT5JHpcucwRLrQvV84=; b=Aw51M0gKWnncDtk8iLhugqw29FDs4w3iZeCwuu
	S7oVJSh5xtUB38PeBAA60l7Oj94Y5OC/jvWD3+U47GXpmHJ8J39P++bFfy6UtdDA
	Tdt+GF+gKLzKzHvcy4YdZUndy4nEpoCVmzeheFeGtK9DFtPJ5WoHNXuc157cPylV
	Aj8ZNnrtpOFKKP7rNpY/ESVTLGA1lyiCBQY7Xh0/90SRpPIYrt55RoiZVraX648P
	pkjUXxhAtELUy1n9ePmdLuCUuWO5HsRh9UIvSV6e0qDdt7FaBsQzaM3PM/uDe/vC
	Q1Ky77PmtkZ9dKzZyC4duf9Zmy3gMK3kflKub6zha4EGrTEw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t3mdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 06:25:43 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b26e120e300so2109242a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 23:25:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749191143; x=1749795943;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v7gKZGrusJQeegBsEU3P4ma4FsT5JHpcucwRLrQvV84=;
        b=WGezWQhwOqRkU5cSltjNZOKpVwgbVaB5Y/q6trdTdxzOzP+T5Tz89tTjNpd5m/Irqp
         nJwsXFoqac3zavrOqJFwl1LK1n/xeReh179qH7f/4zE06IoVTFdeRV2+AK+BjbDBSEce
         qHjqPqfSpCqRV0nFURTOh6QZz10tIMNj9w4O9lEjr91Y39BUWk8ll+B8L49n32cswYEC
         CeqGXckRv0XTXPhC7m9yhekvwQ8jn6YXC5DcUDPuxcXMAYP1VROhYGzg23Yoor5ljt8d
         Kecw/2pf7yjsxVIkOwclwI2UepJwCN7234fImSi5DYFMou2mLLHLD+Z681oSJIV7pWc2
         RGbA==
X-Forwarded-Encrypted: i=1; AJvYcCW0icSJPUW7BiQoK0/abe+yaM0sI7xmTvQ1lTcvVZd7RVPZCzs0DMWX3DvLoECOvSlrosXWrA5i8JRH@vger.kernel.org
X-Gm-Message-State: AOJu0YxUDLV1xdSk2Gjg6ND6V42OudOmWKEZwiPjogWMwu9fF9o1napk
	QUMmsofkb0NO9JwMp0/XeEPQz7uOvBALhidZfT8sWvwq8S433cnFesZMZxRXVkjjQP/krpF0OLW
	mTyWoSjJM4aSS34YUC3CAUV4CBwQNU/5PJnMRGD+nKbKClce9uhb07NjNCHXEB8fC
X-Gm-Gg: ASbGncs4PIWiPajNK7pU5H2wZTHTwcRCmO97cyCrfFTm8HW9c5els+o4btog0aICG6c
	gSzZzxAoSPG7lK0GJbiC3OWEhEG10qUxa6sg/xOMcPGthScpvUdjr6iyfC01r54Kv53LD6A4x6z
	ff8r/CCasY4h3nFCdk3uwI6BLQ9Prmshtdtntvs8Tky24bcovI6X4VdzcWiQZkrkXRHZLUedV2x
	OJChbcjAzEI3Aqy/RcNmMFtdO90WAexoImEA1mdiHLr1w2mTgFR/zCJvIZePdPoTQdEQJkUW9XP
	PMYXKR+la+p5HQApPS3UBEZoCD2gpIBJJJqY3ZDm7p0DdpiKpG4ttBI6Fc4cz+WfPajv1dMiCGJ
	OLw==
X-Received: by 2002:a05:6a20:d80a:b0:21a:efe4:5c6f with SMTP id adf61e73a8af0-21ee24e7774mr3496098637.2.1749191143039;
        Thu, 05 Jun 2025 23:25:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLtUUS+InC0Q4lxSx1iaKa0BYfPrSzKIk+E0v0Lv2PKLampg16JpOrnqpxs7yHyIgoWD/Ydw==
X-Received: by 2002:a05:6a20:d80a:b0:21a:efe4:5c6f with SMTP id adf61e73a8af0-21ee24e7774mr3496069637.2.1749191142651;
        Thu, 05 Jun 2025 23:25:42 -0700 (PDT)
Received: from [192.168.86.35] (syn-076-176-048-107.res.spectrum.com. [76.176.48.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0f28a2sm625140b3a.174.2025.06.05.23.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 23:25:42 -0700 (PDT)
Message-ID: <ae3eb699-4501-430f-8a2e-83a25aa18c95@oss.qualcomm.com>
Date: Thu, 5 Jun 2025 23:25:41 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From: Trilok Soni <trilok.soni@oss.qualcomm.com>
Subject: devicetree bindings acceptance criteria
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=684289e8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=lsoD3MMNObdLvy1227ExmA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=NEAV23lmAAAA:8 a=1dT-6cFf9uBOoVfp4lYA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA2MDA1OCBTYWx0ZWRfX84iNPD/c0HyF
 iv6Qyf+HHSoKC9n7+uvU2h8bVf/PQdwO0V8p6xyeCNWwmQR/gLk29/o4fMsyzj+YMvhHO0c6NKt
 RalQOjtfUQD9HAUz340s1C6GiOGiyQgAu6FQMkAH0HFRrFg8HykOYdWtzQQt+h8Igv+x5WBVBZs
 OFDxnwjLX1rxR0P8RDvdVATreXYhXePXdgVBpRb+q/QHvcT+Yk5sUZhAFxoVDK5QBxwyjUE7iAr
 5aDmlk44aXDjm+AlAaquRFSlgqqlALAVaqElWeZZNPATkItXnNhiGi+gdlvDFNl0R8+9xO7LgAG
 zXYUxEwqcCrW02a0rLhaDGS3GkeQPqKl6Zij8GXpglX+FpbstxMzZe6m/TAi5rFqge7xeFydSz4
 tOsJgGcWf/xnkhu0EZmHiWgK3pncKySKC6t5Dg94VgPkbG80bcezDmdJ9byBHYyAG7unS/gd
X-Proofpoint-GUID: c8U3cleZ3rBCJ1hxAziHwYXosWZNzCN5
X-Proofpoint-ORIG-GUID: c8U3cleZ3rBCJ1hxAziHwYXosWZNzCN5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-06_01,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=936 mlxscore=0
 clxscore=1011 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506060058

Hello Rob and Krzysztof,

I would like to inquire about the devicetree bindings acceptance criteria. 

Are you okay to accept only the devicetree bindings patches which describes
the h/w but developers are not yet ready to submit the
DTS files of that SOC-IP and the relevant code in the device driver.

Please note that driver code and DTS files we are referring here
are actually open-source and they will be available on our website like
codelinaro or github.com/qualcomm but they are either
written with the downstream usecases and not ready to be submitted yet.

By submitting and getting devicetree bindings being accepted will
help us to make our downstream drivers compliant and later will have
less back and forth when we submit the actual patches of downstream
driver features and DTS patches.

I am also trying to find and submit an example to the community
here to give better context for the discussion, but thought
of starting a conversation.

Thanks.

---Trilok Soni



