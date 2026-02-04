Return-Path: <devicetree+bounces-262652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBIOH5BIg2mykwMAu9opvQ
	(envelope-from <devicetree+bounces-262652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:24:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E71E6602
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 756EA3007535
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7863ACF10;
	Wed,  4 Feb 2026 13:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCRuGs/n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aF1959ga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD764346A15
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211469; cv=none; b=iAbJlUWn8b7uQx61+i6XCXKUXAPx9CK2rSyW8uCPgm+oxMgEM8+RxGSzLB7FG8I7OWaIGd8Hn8q9EQqTeJto1/+NbvO1bwSm2NNdLBV1AwIEJsP4Cngbu/eFLzARtnSHOZMv1jLb/g/hDVvoR8uscs7xj6ZKM46ay83ZPcbFt5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211469; c=relaxed/simple;
	bh=IJJcghbJp7W5Sbr6vQDJGx2kFkXqXHDiyIdWsZbQ/Wc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eBDVL7dWsLk7WwxfoQ2DSxw7TzgG1P0fNDkl6ujLvvfatI4L0uC+oSMS2DNiYWrwq2+yDSdZC8BdjULN0s0Jlt68DZbwan2LKuErV57YUv7shac6pLm8X89XBlVUTbtob9zTLt63DQqDoabCqMhYaFq52kUUF0hTm6jClfkFcOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCRuGs/n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aF1959ga; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIW2r1032484
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 13:24:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WuO77aIUfSKWOvBwLlg7xgpIE0DC+kxmXo59U8JAZYQ=; b=CCRuGs/nTA00CNiu
	wmmkwe1Ng5FIwZQMGSu99HRzO4rgETVWk8R56YdFrsLWprwkbkGRtOwJ793ewEku
	F+1qIRYE4C0fFbpHkbDXJHgGwptxewFsJfRFj7KAByyZxfZOwHdMUVIi4fKvdjme
	Ak8vJvlpWNAuzkfulqoKgh3ctbtTSU4rdLtTO6me5jOE36H8XPIhYQSdUyDRd+SK
	1O9+fYzlwPs3VBREI5Ta7SS01GNQ7ZbEh9ryskkP1GmeKloJStt+2sQtMUew92Fj
	Bld7QlJSWO65eoNLGHsqRout/zG3TIH2B93PwHDJG0TcnVo0MiZw/4nJj6XpZOVs
	vYHP+g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ne7udd3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:24:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6de73fab8so204176485a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770211468; x=1770816268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WuO77aIUfSKWOvBwLlg7xgpIE0DC+kxmXo59U8JAZYQ=;
        b=aF1959gauncYWrH8EbfrqEAY5Ui4/VUYCGJQJi7f39h4dmUcFZiupjtB9+Whu6rf46
         k1QgyiufzJzBPW9086+LRocUD5OUy0UisfhcFASflUmgK5Tdx0cvMqOqVfwFPzl8e05s
         syDCOtXApr03HJ0f4WHUoPsVOMZADKYr57apa+mY6wy/GkWpFGThJ2cCkLg6g/KBZPN1
         /pS3S52m0g3tPFJVE4oYLLs9hkhxcDK5qc5VWBbg7hsuGk5ECmr6RquEKjv2LhIqE2o+
         XhtWuUPcL+ql15B6hhZrcl4bhnXdo486vn3s8JgVoJOg3cI+pkWilg0h+Ri4YTt5waER
         VlZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211468; x=1770816268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WuO77aIUfSKWOvBwLlg7xgpIE0DC+kxmXo59U8JAZYQ=;
        b=EcybLRfXEkhQ2k1jD4CYK7RBJoh6d4cF0lJ/OJ0/bvLQPe3hpGkjq/JSahZastNff0
         2omIJcUyCG15E50As6sjuVQ7UZJp4JIpQVA3+D3jKToR+Z4GJUVdXZczH/19fLs99x9u
         ABWHy5sBkcDjEOmB0d2WuM6UHHmeyoGSjMGapyyuHWPuKb4o8FgFlWAVR3DN7GYFu2p7
         UElPtU+V1hQg5xnJjpfUBzWjBBeQK3PTXEjBKNXh9bdfgm4FVriGD/iZj1MKiBtSRh0O
         n3K+krBcO6ZhDccVP3y6vdponZN4Cy7qsM/LC4itz9sIFtutPbLW/n97qFNSo2Cl/VA0
         q27A==
X-Forwarded-Encrypted: i=1; AJvYcCUDDuRLSpJZPa1JZ9L+kT+fyKfHqGpOT9Z7W+NSXbnNXiS9C0Md/TD/MFREw/tgwAUskKmagLHMP+8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Ywje0FQM79QCFQD8Aq41b4oA0LFLJ6lCjzYgzzfMVQ+VfXpikCd
	0dgLOtMngdarIh0FpJgQdIkxk/frY8ZyRWxykbkUFYTpQl2E7yhsHLwidymnfR0njhrFVBlMv9D
	x4pNTWSf7yg1Srw1uQuNGDi+3WIBITzhIjGncz5YZzxTk5u+PPiO6H6iIHS6kN9qCeaqDYRj2
X-Gm-Gg: AZuq6aJGAJI9wEpdMKAtnMKDI8xl3H7+8IBIKEpHqwkutkWMHWr0/Xqf1XzwqqZP2gs
	hbHOeRbjuVZz52ZKP5s82QZeC5RJ0vrtFdId2oVWWb3SJ0TZYf+4loS44BQfbmq7I/0S23wshJn
	5lgAQBIjwakzi5FXfPuvh8JG/MzeRsziPlO2BifOP9d+CI/KWJEPyGpZhSuaelEktetzHu3dXrj
	yYgpLjlFrqz4douGzjZw2ccxuWojDJF3sV5fr9f9AJ1SNMhcU2lkcBfGsQLEb05NvRuWJQBA6K3
	/cO/4vJkfMOr3PJKsvrj+DbyGCMXOSaTVUFdrSxIj4JhjPTCJZjaE8EatZEfyEXY8fuETxHAdW2
	goYhd5/iIysooBni2FV0Wk8g2D/AyaBC4f1SFkCBtVCRiUoppMgvsvKrv9jWRjmk45qg=
X-Received: by 2002:a05:620a:462c:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8ca2f824267mr295290685a.1.1770211467914;
        Wed, 04 Feb 2026 05:24:27 -0800 (PST)
X-Received: by 2002:a05:620a:462c:b0:8c6:a707:dae7 with SMTP id af79cd13be357-8ca2f824267mr295287485a.1.1770211467448;
        Wed, 04 Feb 2026 05:24:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fd12380sm121795866b.21.2026.02.04.05.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 05:24:26 -0800 (PST)
Message-ID: <f1b58609-67ee-4df2-8430-19e7e4b1f30b@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 14:24:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] usb: misc: qcom_eud: improve enable_store API
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126233830.2193816-1-elson.serrao@oss.qualcomm.com>
 <20260126233830.2193816-6-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126233830.2193816-6-elson.serrao@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0WMn3KJSgMNU3VzT6O8Nwmq_7lzHySej
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEwMSBTYWx0ZWRfX1KwfBSQHbMvC
 8ygGUZq2EY3O/T0cU9LljR2bboX8NrK6DeKONHkpxp12/YAZFu61X9dx+Vrg/x/MHbHycbUrJ2j
 V1MOxnathJzFxZ9NEZsWDBiCph98WgbPF6mbkfqCApDbEAnZQh6Kvd1a204Z0jNAPhYvMz6wKz1
 /Eeilz8uCVjk4QKcYJmCrwgQZO9f0BwZ5k2Xcbn++Oy0T0x/GYf4DLrCsW+a7MJrNiRkfkapDTF
 lxMQOAHHoApRg1FUDg6Ci3cC7CG1tlVfBUrMqSEMZxgRxF8Uci+ugvWupUhYeOd3wGk6uIwUCI7
 NAdwnXnhyO2+F4fgJIy+VRem796JE0RuZPJZSJL0GVDXkKrkm5M0Y8yh3vk2BZg6QB44xlWevhG
 N/fA3O/LJqhTc/FKlLuA8hyRZgs8A5jPi9+v8PVZPtfZ407L6shEHt7HSH7tLTpXN0NBp5Cv4v0
 5f7r+iK9beHegAgk7zw==
X-Authority-Analysis: v=2.4 cv=TZmbdBQh c=1 sm=1 tr=0 ts=6983488d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CZCQS8drd-N0E_F8xdgA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 0WMn3KJSgMNU3VzT6O8Nwmq_7lzHySej
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_04,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262652-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 25E71E6602
X-Rspamd-Action: no action

On 1/27/26 12:38 AM, Elson Serrao wrote:
> Currently enable_store() allows operations irrespective of the EUD state,
> which can result in redundant operations. Avoid this by adding duplicate
> state checks to skip requests when EUD is already in the desired state.
> Additionally, improve error handling with explicit logging to provide
> better feedback.
> 
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

