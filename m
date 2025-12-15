Return-Path: <devicetree+bounces-246565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACB0CBDDEF
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F93C304A7C1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18AED22D7B0;
	Mon, 15 Dec 2025 12:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VyWXwdiA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NOXpY6wo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B11E22127A
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765801999; cv=none; b=pfBdZYuItjEqJrs1cfq/hX4fwScPTFPxf5B9k/S/IqLMymwRJFZwmQVOwEA4HN9Ha9RLeWWQLYw1DyK6khl/ooN2Y4kEk3ceJELh3qexKWW9BpgfO4Y2iPlVq0qgQBePfkgWzi/Edt+pYd9+L8GkXlehscHgb+wGvjwG2MF+C9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765801999; c=relaxed/simple;
	bh=x9xTIu7Z3nI+BHXPlc3xpHoopuIiNWvUy7/yPpbNNrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VRLw8BXyZ3Qocon5ivirjfpNWMZQRZniGtzItWcDZGRbTZUOMBgB3c8RXUq0DZsdnwscKtP6ARrIwIvWeRxhrILWgMMm5P7NJXLlw0sVHyZzbhqMFjiClZJeqxpbkbRkcZfZU28K9zo4DKjBhw4smTQJoOkqYoPFazWh/jKY/1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VyWXwdiA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NOXpY6wo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFANsZQ594423
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:33:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4/NPiC8qxSXxsgy7wgYQjJm4
	FSRDvFbKGkMs0zoelMk=; b=VyWXwdiArwAyngWo6H1KHLKhny3ZTfz9pKdBmuOG
	yR4LpPHw9iCuTKoccVfJOmYWUiIJ1sjo9/gex0ctaCzYXdGD765naZFtpQIYorQM
	hbfsPW5E21TvGeL2YFEtvNsL8twT71m9gQqLPjAQV2HnNldrFkpwrzeBhpCHe0V1
	hnTvaHgdhZSM7+iFvuElWn9WVSfvFmyV0A+LABQs41QZjeLZCqvZDDJnyudgkKbq
	kNklyT2wsRkxLeswQND7IoLFFxl6mLVDJk03FSHeNlFBd90AU5R4ORBzCsM29scj
	S9eP5uYr8JWz42RTHsr7Pt5nM1iOHcBcEostetrfpWjefw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11dscgex-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:33:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b4f267ba01so806531285a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765801996; x=1766406796; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4/NPiC8qxSXxsgy7wgYQjJm4FSRDvFbKGkMs0zoelMk=;
        b=NOXpY6woYGQKVTV6iU2wSOaV9wCZTy6u63hzhHDaOR9/7WLj+eUmUHejxf5kWq2Gjd
         JPfqd1HPMeor+ILhsIHho2G9AnQK9YBZqcOCVjvVwELft9syLjqUWce2ik/Q43XVIKHW
         dlbvl7/awFaWvpFFXYaG/tHC9zi/BivGq8/sgvfT9g0tRl7CECJyaTGu+QlK2wOuGrb2
         qBe66m9GRlb0nNsQtSuXBOZd7qzxEiYfYFVEMBZPMPX5JqQsSRdgCxXc38frpTzYiIoO
         00jsl0xzqTWmXMqAosL0BW1WJ/uNF3tqZciRQ6kNzb+TvP+4mojmcFTDkW9bgvMUyY0J
         A54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765801996; x=1766406796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4/NPiC8qxSXxsgy7wgYQjJm4FSRDvFbKGkMs0zoelMk=;
        b=iDNpkqeeQrT+uOeYrZgizJk9Kbu+kM2UGR+QmaST9lJrkzYkIn+UwPeLv0plIe19YN
         4wyFwGugxeKf10s3swg715VQCLeqLyb7HcjbZZOhLW3M7Ef5wWbZ6DqWW4vODQKyQcmk
         dW5P4QFAwHhfscY+svxfWIE2w1MF9i9yCS4Yr4SgP6oWJyikPqvFOBH6RAKIWObaPaq2
         YIxpXfH5CKwwIk5gdXCncR1Swo4NMx/gVlRsbitY02Th/fd/6ZaTDUabxhNfj7vhEu3a
         aNk4GcKhlGV9WwDyOLw/LP+hPG/CW2hMEf2xFLRfDf68ZF5PnQMr1ZxsSCJEvJ4nq9oh
         1SSg==
X-Forwarded-Encrypted: i=1; AJvYcCXiZ3gJZS2yczekntdfNGzSHJrKR7IlbuSjUmoqRD/bwWk8F2h+kLCU76eRUup9hKpX9HlaZvCGwD7h@vger.kernel.org
X-Gm-Message-State: AOJu0YwXrPOYjTXTHjoyfVxK6XPR4BDrzRRbq21yoNvXRs9TmymvEv/G
	LmTP2wtLzq5vum04AVC8thllVD81Z8Kf3nPtvZpwAqxetxAHaZMD7V0iGXgvzLxlHvu7f1hZFC3
	EqpykNgHjJnWSA2itv3KyWYHE95FaKOLtBtrZH9wybk8/N1ljQUHl6XCzeuL6xc6p
X-Gm-Gg: AY/fxX5xwCxupY5bMlOd4KvAODF21iF1WLXcYMiyQ0CY7+xy/jWRr7SA6qvBWFYSl78
	n3lSvfy+q09LaS34QzI3YAk0CorIbuSlitTDpL8d9Egcse1renoEITVDuCrcTvYrrHgPLNJONMd
	PsOSWCwVWiyIneT/RPRPsOwYFbxORa470Br6Vh501+4t0mZGUb2yQCpHhQyKx7tzx4Ma13GvmDM
	X2IDfBnuFDTjacrn/sA1M0ZhNt9wiwClBmcl7OvUKM0WbJeCWngIGhTOWSUBUdxCbvPsaR9aiKV
	XK2C4rfL0clMnhM4KAPiVZQX57rGm9O10YaWZ3QqmFeFsATXTMrJKJy8WpxUmSI7sg7W9bP1YI8
	Otrdrs/9qYCBlf09uuYw6ig==
X-Received: by 2002:a05:622a:2444:b0:4f1:c5f6:22ad with SMTP id d75a77b69052e-4f1da24ada5mr123993141cf.16.1765801995483;
        Mon, 15 Dec 2025 04:33:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEolfUqhAvxiCbRlZql168UKfAxUzT7uQFWVx2bts3/Oo2pvmASZPEehhVJCf9YXfsm+8YuWQ==
X-Received: by 2002:a05:622a:2444:b0:4f1:c5f6:22ad with SMTP id d75a77b69052e-4f1da24ada5mr123992651cf.16.1765801994844;
        Mon, 15 Dec 2025 04:33:14 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f8d9c6fsm186623355e9.11.2025.12.15.04.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 04:33:14 -0800 (PST)
Date: Mon, 15 Dec 2025 14:33:12 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: kaanapali: Add base MTP board
Message-ID: <3a26r7uvvjvhj6cajkt4rmipgp2cgqrpxkqhj6bsu4d5husjlr@yhfvhe6mndor>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
 <20251215-knp-dts-v4-4-1541bebeb89f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-knp-dts-v4-4-1541bebeb89f@oss.qualcomm.com>
X-Proofpoint-GUID: gL4ZiaY7bVTlaOR5TTp1ptqP5TeWR0Oi
X-Proofpoint-ORIG-GUID: gL4ZiaY7bVTlaOR5TTp1ptqP5TeWR0Oi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDEwOCBTYWx0ZWRfXziAFBwaPXeTX
 Y25XnBcHOhwcZw0haKtNEjzBhi8nRpQFztSDmvDq9kf8lb2pOX//j1bqdFWMPkzLps734L2ylgk
 WBB9orX/VXBLE1/TFbz4U/BMYkHprdtT52Gb4OpBkF5yFYRJBjG4E50tw06YlUE96R7WoC9a2Mh
 ioL8f1QpavuR2LgQ+31cgUMSAIVSf3IW9JkB2DGdKCwI1tawbTpcoS7keU4QA45aAhtfTWA3SRq
 SkWp5meAMOPQ7EFXhIPKEd/ZZBP+daMN3HbjEWDPnLKR7eZas55yFaA5RVQJ+ySyjFQl8rnhiq0
 HHV4vaehn1c4O/Lw9Oun6ZpfLmeYi/1+CAsFmtUrWMxHZv0ksUMtr4mvdEBj6qVneT6exMj8g2P
 f4aNNmWaoH3FSjAv1azKBSqd+8GgQg==
X-Authority-Analysis: v=2.4 cv=cfLfb3DM c=1 sm=1 tr=0 ts=6940000c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rVI_ATdNTQjFCBPYYL8A:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150108

On 25-12-15 01:07:24, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali MTP board which enables PCIe,
> SD Card, UFS and booting to shell with UART console.
> 
> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
> (added UFS), Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

