Return-Path: <devicetree+bounces-187701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA8AE1067
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 02:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50B783BBDDC
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 00:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54CA079C0;
	Fri, 20 Jun 2025 00:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DJCimJmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3BAEBE
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 00:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750379594; cv=none; b=ZmuYj8OrRXUsJ0mks5yr+Ad1nT3ubRWAj0fdY0JhWBTzjkOh/9Z040p/eK9upRw5rBZuJ+1fBo8MT8kr0BNAAirSUn+t7c+HpVuVbKcElHP7gp5HG1vIEnGeVKpUapI5Io+k/pECA0nL5Kxl5Mkyly33hAlqaq6lL9eKNwoPiBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750379594; c=relaxed/simple;
	bh=dEjH+FSN3ipBFal1GleYoxDYC0kKtc29ALoxhYDANVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ROD+pKUH+a3w59Jig5HVj+gZ0dsSeZ/HK4+k9hbtIfgQqilY8TXpiVMCG3jAXkhWKJs++daOLxA3sUN1K45XOglFVxLNgYaWeadU+SnGl4YbQewcnOG1g/QVCppoGotdR1CJXL/Em4LqOpn1vyFuMTRurqROFdshK/BGrve8iVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DJCimJmD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JGVLNb015082
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 00:33:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ksoABJXXvx1N7hucQ6NraV5GRYy+LrljohBAACfBYU8=; b=DJCimJmDniSrnAi/
	lA/7GdTkSTITFfbx7hE+c7yk2g602L6WarirUSqXbmomuzG85xCqRWCm+DqHZvdP
	9sASt+NHpnbS2QAvojqcT7ZWsHG6qS9Ll2Kw3jDSQ1DFddyHWq1irh7NfGXmsIm3
	bo9ZThfwlcLMHlxVGSEF7aQPQyI2skZCgriJk5QZVjRQylrPeE1zixBHplcbbnJu
	2kkHR/gYDYG66WMZBcW2Qnq/m93eZrzpQeBXhuSg/lyH/px2bSHO16IWh0VD1Vi+
	eop16Qi9ZMAncCgq8h0J2r3C3VOo25V7qFUPdU/HDvL7wtwVm7zBldTx4h2sPM0q
	IalWCA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792ca9pkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 00:33:11 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b31c9a9dcc3so1359490a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 17:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750379590; x=1750984390;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ksoABJXXvx1N7hucQ6NraV5GRYy+LrljohBAACfBYU8=;
        b=m95ROJAcbltynLv+KG8/lFQzOSv0aQZ0RT45k4WI5B8+W7/bOz1y/EnovDSLB3tDga
         /ewpp7EeTninTklnp0oGc8ZksDyayBrSLWe4rCgsL3cVzLf0CorIlNIy7XoqMp8Ow00X
         K2Gi4WTQ2gfTlzquQwJz4FH2PsxAvMSiJA40VGLdI+oRL/AxLj+mIDh+QCAh0pnu/Tfo
         /zjN3W0m2knLoIF+GgoS6N8F0xgFipJLCyg8CLXz0NaLJjHiqVDgSRLCGlIcpMSl11qo
         vA5uIsiALZ1oNF9px9unzMEMGJGRegmi/r3BawuYsmmG7fWES44rbfjHKKX8nHvmm12n
         vWyg==
X-Forwarded-Encrypted: i=1; AJvYcCX0YUSdSqhXhllt2D2QZZqE/0JoV4DPncY5dmXpPpXH84xJFmTzQvXTx2dRRQJ4eJ3iObXTE89GQQj+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2wbu9Hfna41tJWRr561voOj64LCNv/Fjlk9CwEaySDgz/zRn9
	sSgUVwiNv0vsQkURkI8bu7khCpuLbsgGrGQFXdRcPPe1ox/Arv887uZwHrB04uJszYsCSejAEG4
	q/jELf6n5dQ38HDesWq643v2FEd0PbHBJgw2Gpq4Gsipd9qbWOQAjrX4DkMS4orkS
X-Gm-Gg: ASbGnctbA4O/VKSUYZwK7N99CK3bz8NZ33QBVj6J3h8GqBErOZ9NTXQbk9Egd2C8ZI2
	DfkE8hfIyGn8E/fncdhcEL8oEtPHPlIqyU0JWMp0evBgCPzwa6Y8G+ioYyVnUubKhCXn2JbyXaU
	/pL7+kI7m9vUeLvtLowcFdSFiQCbgKSvgBQoRx7fVYU4nrSRLdyLF/gd00fnxgMYOdUsQSzU4jy
	PWSVRSysffoZFef02SrBz+4x34HIdIjoGCBxfL4fzImKXATWcWmTUmZ/YJHtl+DKKkWZtsgPFUG
	dE0DfvzTAdAWl2yVNxFJ/ZHgM+de46hTkZleQBt7zC9hG5SzC3qw/G6019r0EaeoR5BcDw8gD5A
	WtohPhMp+3kEn/DQ=
X-Received: by 2002:a05:6a20:244e:b0:21f:77e2:13a0 with SMTP id adf61e73a8af0-22026e13231mr1171729637.5.1750379590480;
        Thu, 19 Jun 2025 17:33:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoDIsNEyUlki7ZjrTI9GVJS+GocIYC/rwWPCWnAG3PSWetKeeD6OC1n37shGoNB4dnpm//FA==
X-Received: by 2002:a05:6a20:244e:b0:21f:77e2:13a0 with SMTP id adf61e73a8af0-22026e13231mr1171695637.5.1750379590051;
        Thu, 19 Jun 2025 17:33:10 -0700 (PDT)
Received: from [192.168.1.111] (c-73-202-227-126.hsd1.ca.comcast.net. [73.202.227.126])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a69bb81sm708272b3a.156.2025.06.19.17.33.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 17:33:09 -0700 (PDT)
Message-ID: <37561ac8-ac0f-4744-9495-c7589544d4bb@oss.qualcomm.com>
Date: Thu, 19 Jun 2025 17:33:08 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv5 0/5] wifi: ath9k: add ahb OF support
To: Rosen Penev <rosenp@gmail.com>, linux-wireless@vger.kernel.org
Cc: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>, nbd@nbd.name,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:MIPS" <linux-mips@vger.kernel.org>
References: <20250609030851.17739-1-rosenp@gmail.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250609030851.17739-1-rosenp@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lxag1y17cAXOZ-YFz22qaRGY_nTQH5ty
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDAwMiBTYWx0ZWRfX7RFzRefHjuGg
 y50YOw5CLGI+5BT7hYuMlipLZJ6a4MLd9U9r9dVwUHd1B1DNtf4UzQzP/XZGsmlUCdIuUvNoIHJ
 koBDwEimCeoK7C+doFC+WeYOgp/RYKVBtwEVMoV4msBKPU30rr3vFOxdnX4iHA7+1FHN4CY1MXl
 Ctnx5n4oZ9e6zsUKA1412Hof1vWtz4yHp7DjFvpLPm0jLloJa1+gMy+HBKmQMHeXnx6vFsdk6E0
 VDogLO91tosyCaJqp8u8TdvnQcaULuHHnxoQ6ZEpXKzH8O0xdTkYKaAfbsZ6OfK1GAR8t2M4KxC
 t0QDp1SHg+/jtfj2c8jrwTPoiS71Mt0EHmSwOyfN6P1dau2xanqSGIsYfTn0mxmtkrCx7IuOC+b
 VcnAxsXCOoTPO9IeKIArob2SpBez+wsTpx02bFmNezpNml6Db5rjHcF1MtBmvFU04TF0c39C
X-Proofpoint-ORIG-GUID: lxag1y17cAXOZ-YFz22qaRGY_nTQH5ty
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=6854ac47 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=e70TP3dOR9hTogukJ0528Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=aMoWnUFRsw3tUzfFL3sA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_08,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=774
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200002

On 6/8/2025 8:08 PM, Rosen Penev wrote:
> First two commits are small cleanups to make the changes of the third
> simpler. The fourth actually adds dts definitions to use ahb.
> 
> v2: Add documentation, use kernel_ulong_t, and of_device_get_match_data
> v3: Use qcom prefix and wifi suffix as in other ath drivers.
> v4: fix up dts example in Documentation
> v5: move back to using qca prefix. It makes no sense to diverge between
> all the other drivers for MIPS based qualcomm devices. qcom as a prefix
> is used for Quallcomm's ARM(64) stuff.
> 
> Rosen Penev (5):
>   wifi: ath9k: ahb: reorder declarations
>   wifi: ath9k: ahb: reorder includes
>   wifi: ath9k: ahb: replace id_table with of
>   dt-bindings: net: wireless: ath9k: add OF bindings
>   mips: dts: qca: add wmac support
> 
>  .../bindings/net/wireless/qca,ath9k.yaml      | 23 ++++++-
>  arch/mips/boot/dts/qca/ar9132.dtsi            |  9 +++
>  .../boot/dts/qca/ar9132_tl_wr1043nd_v1.dts    |  4 ++
>  arch/mips/boot/dts/qca/ar9331.dtsi            |  9 +++
>  arch/mips/boot/dts/qca/ar9331_dpt_module.dts  |  4 ++
>  .../mips/boot/dts/qca/ar9331_dragino_ms14.dts |  4 ++
>  arch/mips/boot/dts/qca/ar9331_omega.dts       |  4 ++
>  .../qca/ar9331_openembed_som9331_board.dts    |  4 ++
>  arch/mips/boot/dts/qca/ar9331_tl_mr3020.dts   |  4 ++
>  drivers/net/wireless/ath/ath9k/ahb.c          | 60 +++++++------------
>  10 files changed, 84 insertions(+), 41 deletions(-)
> 

DT team, should I take this series through my tree?
Toke, Ack?

/jeff

