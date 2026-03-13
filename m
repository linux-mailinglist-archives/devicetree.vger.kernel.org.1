Return-Path: <devicetree+bounces-275018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEXiGIjOs2mBbAAAu9opvQ
	(envelope-from <devicetree+bounces-275018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:44:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C929827FE82
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:44:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB740319D809
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C183845A2;
	Fri, 13 Mar 2026 08:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IEHPwd3M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gq3iY43v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BBD2BE026
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391336; cv=none; b=hnQz3ZIj9Kh4Gq0z3L3LszSYK1WtYZSstCl6ln0d6k0RLM2m+P3W2bUjtAmHIg8loBVZKDxetuNQsWLThZ9G3gZ3HYDOa4eOX6qv4dyU2+IdXRY6+Eimpki5R9tE6MpIGUU3KWRMi1uFpiyXdUovVqa39MZElbi4zRz5OgsgbXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391336; c=relaxed/simple;
	bh=Ve6PiNcc143QryIJ7dyWVRwxS8jTgcoxh6k942QCyYk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4o2Hj3TYOrceaoghkVfUk3f3K3ljvG+h1BUL3YSEyHu4uBFZY4ysgPkr9Gw0CybFpDYADH8k8ITVt1w5Eum9c8P4XPT6v3zXFvMJjOh4a6g2yP26VEcr+MUzYvmuPiqq7fY+kDXJlEm3ieEdi090wg9SpYYmj75ImSdzgC6Ut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IEHPwd3M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gq3iY43v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7iLlc2262550
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:42:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ysaCnoNXBJd5CGrL7Xb3oAj5KBlRFnMyUSTWqYDXj70=; b=IEHPwd3MKzoKEP51
	LIKfGxQqvR/eLpVKJfkiATsODhEvatKFmry8eSM0wMMWVLVMy3axoLqak9C5UYNP
	1cWkE3Jtf3zXOFL1mrC+ctTsnaJ3+wamp1vjoS7/cVglFftCNdSsmYQfWazYcUiM
	R02aWkRr/GYmP3/n4JMfzK66pa/AXH0JJvNTcsUfH7HmDUMVf47ERN9v8cy5Wp6O
	r/D5plU0nHHJ6TwgslupTGSlvejAWeQQA6JA34mG/odJeBnHUiAeuuzmDI+onYhL
	AF6uZ8ZSIcqUqirWjDzqepwXy40GWGU0fR2VhLriYgHIL+R8nJvGND1cx/RJYUmJ
	FlgiNg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4r786-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:42:12 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-829a9d3073bso803495b3a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773391332; x=1773996132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ysaCnoNXBJd5CGrL7Xb3oAj5KBlRFnMyUSTWqYDXj70=;
        b=Gq3iY43vtRSgg2Qf7C3a3VIKgopoD8OBtDsp5rfy4QyQbk3XzwyquYyClacPJv5FvP
         WI8KgB3+NIgocAB9vqkpLU4JtYQYlRVd+u3hqolQYs7IPWXcXWh6pPbzNtiTjaQgjq1E
         Lm3udcY6CVsHgn0IJqCi9p4v3jhRWBCdAn/QAqcdUFEfuB8iOGrzMFIxIGjQSYQBJLKJ
         wXvU4htkUe9oJ1VgQMHO+1HHb5Vx2MzY0TmVCl743uvcbFJehiY+rleA990w8AsoLAW7
         0/ckHwpVPZx5pZzLW+3ghejvn+EsjONWPdHNrzjpax8ViHgbBRntc5M59WGern5/Qjam
         bZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391332; x=1773996132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ysaCnoNXBJd5CGrL7Xb3oAj5KBlRFnMyUSTWqYDXj70=;
        b=EUrr74DBMMFoU7euf96HucFNgfGK1qASMNQu9pR4q+ROYOPejtHyxtCPoTck35/iFW
         fZde/zJqsuwKdpXUOvokRdydfJX7xHj6RNRfXFlgNZdZb/TnhteM1oSp7rdv6LqCa+S9
         9QyMDD++PknP/ywzkynjyWR4z7KIsZAn7rVdk1FSrEm2W9uP0tM8Vp0fn0fG+n38Evzp
         1eOXVI7sBg4RzyzJhEPDwMU7yKhSeqRJIikNyvQc1AqvyrhkWcAmF/gBEynz4vQ/AWYx
         VldWU4itNi1uTtyeZtCRel646piw1WE0vNFzRIH/+MV1E1yUCTDtBB2Wd4vj4UmvgJWn
         d+EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCwFnXFvXUeoYCSAbuL4WELhzkdaHD0OohQN9B9DQTspg1U/uy5OIS1RQFdVr1+CeV+lh0i3UBzwv3@vger.kernel.org
X-Gm-Message-State: AOJu0YyNBzmZXU1nngHHajTelooFi1dKGyiIikZOldqxEYrsCROgFHfc
	O2mutcl6z3o1uNB+yoyqs/YNo24OZiSjgIhvKJGRVVHLWO+t2zOlqhssQJCKjOvxNGHYWBOgOuc
	c+7nUKGuw35NFaeQqHIVKSz5FE4VtyZqgBlPN7opZeQhrCbFNxpMu4CbROTSVhXM6
X-Gm-Gg: ATEYQzxWXtySD995iq0F4lzOupzSBlVfC2EIVuXVTsAUMSVtGb2QkIiTAYUPEoeDTbd
	PeOGNfIIOlQ0atSpDC7px7bWlAgeUkiK3XavRmYPGDViWZHqp/cn/+AFn71ycmWjc+21kyY/t+D
	RCL5t5MWvmlhjNlwFu0BKM8CK5RNy77CEuWEyIS2xudsCIyPtBitQWKMmUtj6qPEdy4wExEzsuu
	CvPe/x7j02FbkjiJKNuNsau40D396NEd9Qln6wTqEi3ZTREf0i9lbzvwUP/RKpQUyhePG+JCC8P
	0wWiu1TW9KEDzAfVbvhSAYxuhxMUjYYqlo34oI57rnhYk+/2gbFf8OMaTUohvScN10fUx2f6Kwn
	iS8CIYseNp4nKt+NEgODgup9VDHO74+Gqx2d8SP5w/QPRg0Y7ayM59CcG2DdFhU/HrdE=
X-Received: by 2002:a05:6a00:409b:b0:827:2eff:a29e with SMTP id d2e1a72fcca58-82a1988e77emr2262723b3a.34.1773391331862;
        Fri, 13 Mar 2026 01:42:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:409b:b0:827:2eff:a29e with SMTP id d2e1a72fcca58-82a1988e77emr2262700b3a.34.1773391331400;
        Fri, 13 Mar 2026 01:42:11 -0700 (PDT)
Received: from [10.152.203.161] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a072414f8sm5428282b3a.4.2026.03.13.01.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 01:42:10 -0700 (PDT)
Message-ID: <d966a695-160c-4092-ad97-3761b1bf6b7c@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 14:12:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] clk: qcom: add Global Clock controller (GCC) driver
 for IPQ5210 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-2-fe857d68d698@oss.qualcomm.com>
 <yzw4ruhxaznndpyzlrqnxlbrveenlpl4yp2ebbshyh2yo7te2n@64gldqqmk3nb>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <yzw4ruhxaznndpyzlrqnxlbrveenlpl4yp2ebbshyh2yo7te2n@64gldqqmk3nb>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: lI3B0Ez7bBGrjeItEH6g22xEkZBXpCUH
X-Proofpoint-GUID: lI3B0Ez7bBGrjeItEH6g22xEkZBXpCUH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2NiBTYWx0ZWRfXzVU1XPL8EhF/
 A0bMgllbYUr1fhStG8qvp0wpNargka3wHtZKJ+fcT8buzB8qvEQu0mLJ7gtjz/ZAYfMQQH0rkZM
 EtGhvi/tExzFwSRAJ+P8SZDjdqpmsIOP4KBivrMHQGp+127Elk3ZJrL1Ol+xsP0K3n0+AAP7aSV
 4aztDxNkYDy69vEu5brk+EccvIkvxcB9Z5PVV6LE+bDfKq3+BkBMsodi+9g49FYyGN3LiAqvBQi
 uaaTWvNpHATuZsHho7GHzChk7mL3GDZcrJEtXR8cKmZfEKAJC61zlXukgMm28ibl/149uNkQN0B
 V06supVPQ3IlKTt01aKSGp6xsW324J7sPFqVZxmPJPq2NaIEZ/EBqIGCs7kRmo0ePRmuoqw7sqh
 ffRGuWfTO9nML++oiYeAsP5JhYiZ8HZWNlYbEXuSBUF6fnVh3Q1PaD4mix/8D6pGOleHElW4PZ6
 3xAIC4tO24RiU5qX96Q==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b3cde4 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=xo8W07fJ9kZJw7rHU1gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130066
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275018-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C929827FE82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/11/2026 8:20 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 11, 2026 at 03:15:44PM +0530, Kathiravan Thirumoorthy wrote:
>> Add support for the global clock controller found on IPQ5210 SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   drivers/clk/qcom/Kconfig       |    8 +
>>   drivers/clk/qcom/Makefile      |    1 +
>>   drivers/clk/qcom/gcc-ipq5210.c | 2641 ++++++++++++++++++++++++++++++++++++++++
>>   3 files changed, 2650 insertions(+)
>>
>> +
>> +static struct clk_alpha_pll gpll4_main = {
>> +	.offset = 0x22000,
>> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT_EVO],
>> +	.clkr = {
>> +		.enable_reg = 0xb000,
>> +		.enable_mask = BIT(2),
>> +		.hw.init = &(const struct clk_init_data) {
>> +			.name = "gpll4_main",
>> +			.parent_data = &gcc_parent_data_xo,
>> +			.num_parents = 1,
>> +			.ops = &clk_alpha_pll_ops,
>> +			.flags = CLK_IS_CRITICAL,
> comment, why?

Sure, let me add something like below in the next spin. Will that be okay?

/*
  * There are no consumers for this source in kernel yet,
  * (will be added soon), so the clock framework
  * disables this source. But some of the clocks
  * initialized by boot loaders uses this source. So we
  * need to keep this clock ON. Add the
  * CLK_IS_CRITICAL flag so the clock will not be
  * disabled. Once the consumer in kernel is added, we
  * can get rid of this flag.
  */


Thanks,

Kathiravan T.

>
>> +		},
>> +	},
>> +};

