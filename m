Return-Path: <devicetree+bounces-158410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C220A667FD
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7DEC179857
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 04:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F6B31AA1E4;
	Tue, 18 Mar 2025 04:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U2hCufXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CB512E5B
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742270538; cv=none; b=QkNsQzkUg+j9f0KqRNEBWQbraHGtOmlGNAnsYnoCjEW+DmaeQalETuwQazR2ayn0Q7ll8lu4+KXXMp2GJLiK5srB9iC//ZzfX/69TEO7/AV4UhzD1cawVSS/+odF4EhdFuHEDRb3/3VEDMhXd6WTy2PqN7ytV5P09rlfBgkSadA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742270538; c=relaxed/simple;
	bh=YE+BglfvgMmVVlGY/1wSFf/cUHxgjA9f7nPDdKf7uTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TnJcrRFzKoIgXt1vyxue+7DwvVHMosI5bVJh7m8hJvaQD1+nbYhA59Zd2rnT1UPLHx0w7H3M00pFEzOe5IN9TmXZpAynNGQtXe2/TgrL4z4jkeW7xzVvsN3+ax0jqs5Gtm5qZZ3YZMsG/FeuNtPYgiEh/VFBlpZGpVTgBm3Aeq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U2hCufXU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I1ADgC019834
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	evxBLxF0vJkO86a539w8EsrBTfuvbVoib+/2TU9Ycto=; b=U2hCufXUfpZVqgvE
	m9WMkyz4XJjMLsMOD19uVu7sD7AzpFDZfhfbcIBEdLUfzConP9sUhVwxylhqiVPm
	4KWhW7ETSxeBFGPoG99VgiqsA02vaZheTE1ToJDnYDZR8vZJUwsjYDErr85PmXQJ
	uKjekdmJhKWG0ssb+WnVwpJLsha9VHPSKmw+y0RhwJCR3Iqzs4YJnN1OMDTETDFa
	jtNXSVq70vhit+nZPbPua9Wr/Ivscv/C8N5Uai9wjEvHvzNntEP9aJjzF4FaJ2QQ
	j7D+gouFdDjDXdjQT+eMOw893YSsipMsc/CabN6zJNJpcMIgj6BThhlFTMkpRlMb
	DSsxCQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbgc7w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:02:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2255ae39f8fso105045875ad.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 21:02:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742270534; x=1742875334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=evxBLxF0vJkO86a539w8EsrBTfuvbVoib+/2TU9Ycto=;
        b=OSpFbjThgnyOInBop2Lv1JZ+0JsdF19qwkyujIm98a6tlEdv9siBx6B3QE7La9Xq2g
         HJA1v7WsnC+Y7qEu2S+4NoOxx2HJBaLF5/nw/+BgOxVYdZe/o/3pAuHtX0p93KKky0Hg
         1kkhoi0BllFzhkfpZ8nuUg3puUf5AZphiN7pRqcJwZYJRhIOAeGOk8D3VMdoTwNzvgor
         by8T13L+Vg/U6ccT890ICrwjEpUvkoiZ68Kb8fWdA69FIE9eq33bT6IKoP8td3jgRQk/
         VQ3h3bqGpZnTG9Ng79akuMnzAUtQ1BIDXkImAIigRpoDAVnQJFCkOhZJa4u/rR+W2WlJ
         OsRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLQNFzS1kw+ddCIPKgIkKUk0zLLcJ/3egA2B3CQO2f6s4/9gQQbwhYTFdIE18cB3yHj0Pn5vsndO9+@vger.kernel.org
X-Gm-Message-State: AOJu0YzHJkJLE08Gm5VyzD55hg0uWNnXvvJISJp6snA35yiV845xp0qZ
	LpQii0L4bYKNw+sGulJSUf8TANZK1aTkYhGJbF660g80HxFK+lMRNqkEEwvsix479KwNhCt36zd
	/Oj0XwpcAZb7UzpO10x5omAu5/wExmG3PtKJhOZ9QHyFFbAgA6jdDrfD46kqB
X-Gm-Gg: ASbGncuwrXZmpM5kvkyBRfRViBDUPEpoH+z1uzu4ISQpDmTGRidQ4GTZ1mW2PkNPv31
	3jxqNdof/5aEvCvIWv8q/z5his3upoiqdYBZCFRxRpaX+yLmeVjRzz0+NBePR1ldIbKeR9OMNUa
	6vf138yp4+u+RoAJCx78UOtnLjcNyV+qdgtJzcfpdAtyi/dSglGXQBrEVKKUg/owGlsqC8cs8xK
	J3VIb9ib8TErIUjTL24sB5rvtXtEjLltcHEj6gC+c/UVt7+AIe4ILyI+dj2Zjy7+5EYUaIuW1QA
	8jvAE1elRqdDNmD3SYKGdL/nra8DDHBIjGpx3cDBQCmQTRylszeunyC6eA==
X-Received: by 2002:a05:6a00:908d:b0:736:aea8:c9b7 with SMTP id d2e1a72fcca58-73757764898mr3353853b3a.2.1742270533944;
        Mon, 17 Mar 2025 21:02:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfTlJDWwrgB/atBHiVL6o/A1R1cqHfM05IhNbPgNmLuzKd0jt55qXiKn1o6c6a9erICRKnVQ==
X-Received: by 2002:a05:6a00:908d:b0:736:aea8:c9b7 with SMTP id d2e1a72fcca58-73757764898mr3353821b3a.2.1742270533558;
        Mon, 17 Mar 2025 21:02:13 -0700 (PDT)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711578e09sm8465029b3a.73.2025.03.17.21.02.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 21:02:13 -0700 (PDT)
Message-ID: <f7f9ab59-2667-19b1-98a3-47843f5b3e83@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 09:32:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH ath-next v11 13/13] wifi: ath12k: enable ath12k AHB
 support
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Balamurugan S <quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>
References: <20250317204639.1864742-1-quic_rajkbhag@quicinc.com>
 <20250317204639.1864742-14-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250317204639.1864742-14-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d8f046 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=w_ZfqNI5J2udKohul8UA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: cMiAAZSwzdzbNIOQrK2C-YcOlx2jN6oI
X-Proofpoint-GUID: cMiAAZSwzdzbNIOQrK2C-YcOlx2jN6oI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_02,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=735
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180026



On 3/18/2025 2:16 AM, Raj Kumar Bhagat wrote:
> From: Balamurugan S <quic_bselvara@quicinc.com>
> 
> Currently only PCI devices are supported in Ath12k driver. Refactor
> Ath12k module_init and module_exit to include Ath12k AHB support.
> 
> Add Ath12k AHB support in Kconfig with dependency on Remoteproc
> driver. Ath12k AHB support relies on remoteproc driver for firmware
> download, power up/down etc.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
> Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

