Return-Path: <devicetree+bounces-115822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB4B9B0C2F
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:53:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 621AF1F222A0
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC5C18BC23;
	Fri, 25 Oct 2024 17:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GQlx4I8Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564B920C316
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729878811; cv=none; b=FUzGMjO1g/DhdBp+ficOaBZQLDkib0Ah3LzI+PBGgCNZdnijfX/h60AKl2HGAql7JCj8Tje4lPCZ/wMiEi6X2knZ86fcFxN98bB2kPC8pPFR23//h4mUg4ubyq3yECPFxvQUQ9wfHv/OjvyUnt9tO92ORjvoTmW7dTHfrJXmxiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729878811; c=relaxed/simple;
	bh=P8w/4xa//RU9lAnPnwx248N6Weq+tR/HtL0ChlTNq/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BBbKBJzNbCoBDv/Djy/Z8EnmzGbRsDPJBl7G97Zk5MWXAUyo61wzWFmOwvK6ebhJNGCrBvrVlYmkJtITyytn/hv57L667vAZMIFTU61UNt9hwytQikbuR+r3oWGNSTefQzm7a88SreJe3o2yDxT5ymwbzCxDyAFM+D2b/+UhxSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GQlx4I8Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PB21T6000954
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8k7oCA99Z4uKYdd0P8aQke0d0o48r8gT1uqzJnxlXhE=; b=GQlx4I8Yy5ehiz1Z
	kP7r9JPTJ3jb20iV4V2fyiBOABOtwqK0a96pZWlHqw7Rg4qaVAF7a3f5oO7whixp
	K6sNWRhmHQRCf9Tid9SBsgj0d5CQJs6uqb7euEk9sehr+SfsKRks0VNu7GF8/6e0
	eX/4hQsMBRy3e1LlXpYTPSfbVIhu/4gwFtFzYr5BWHyzAoi6xjJ0V2cqztwQz2lq
	3xVmE/hfc0RsY+3V3jASbdWHa7lwijDb0VQ+3QBjAWv+guLjOjqFRwZOk9we9o3p
	qcFRECT314LiKk9ygnjuOdehxjZKFNKZvwISoUcocMQqoalb48leDkoeItDcRSbF
	F50K4g==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ga3s18d3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:53:28 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-71823f578edso404926a34.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729878807; x=1730483607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8k7oCA99Z4uKYdd0P8aQke0d0o48r8gT1uqzJnxlXhE=;
        b=ar5642vVW8cKX89Ju0bzi4+gTcQaBldGyAC4Z7bH6wOVLYDp+QpDnl2Fnak1yT16c6
         zKNWQnUduF+r13T7gzXbDSDKQ3hjI7obZJ1Oea0KTzasJ3o92nKHfqzlbNlIoDXf9nnE
         oXYFKvCFlHZzbp4h1RX2TLb3U2zI/Wy/HqFjQh4W627Sl8lzzkHrUDRkAsbLHgMPre0A
         goms84h73RStSIF4infTZ1L8HgWGNT0hStsJjo19xpD7Q/gzDg4xWVEzqSdl6eI09cAA
         l54C1lAUkv3F7KZvBYZg8gf++Lz9FTsPqHFN+BRjEgwfWdOhdOr45vQLJe1tCd7XaahF
         hPdA==
X-Forwarded-Encrypted: i=1; AJvYcCWBUppGKHb34gWh8oBQc5feTbUMxmmwPbe1Vs63LMp4qUwNwhZK9lyMnhcfC/PkSFmHqiWTG6ozKNvB@vger.kernel.org
X-Gm-Message-State: AOJu0YwOMUonzD4v4srO0vbyzQzLTQOJu5W7YX5eLNLq7H64g6pO+yb0
	yJwSEX6wdVjag4VvUa5ODClUPLYXc6FuU/qSSQ4Yx0O5ekmLjZN5bUwr1uV4SCozNkTVWsRKItp
	2PYmhKZA1RgXE4M3V0mYfoKDaGsFNum4cC23DPi1UrlrMAHs4/AfJ+33PtBND
X-Received: by 2002:a05:6830:923:b0:718:1f8:8994 with SMTP id 46e09a7af769-718682a5260mr102208a34.3.1729878807509;
        Fri, 25 Oct 2024 10:53:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcROYxh3KC5kpHdGtC1+anYSiozumDUTH3CW3qO7RQwNgxaRsz0qQ0a5hcLEsoiXRG9svtFw==
X-Received: by 2002:a05:6830:923:b0:718:1f8:8994 with SMTP id 46e09a7af769-718682a5260mr102193a34.3.1729878807119;
        Fri, 25 Oct 2024 10:53:27 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1e0b2400sm93622966b.45.2024.10.25.10.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 10:53:25 -0700 (PDT)
Message-ID: <01ed914a-bed8-4d9f-9ff4-56b4fc8bc0b4@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 19:53:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: qcs8300-ride: enable ethernet0
To: YijieYang <quic_yijiyang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
References: <20241017102728.2844274-1-quic_yijiyang@quicinc.com>
 <20241017102728.2844274-4-quic_yijiyang@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017102728.2844274-4-quic_yijiyang@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5uiKfayrCXn_Onsnqm0RqsRHbq9RVXlj
X-Proofpoint-GUID: 5uiKfayrCXn_Onsnqm0RqsRHbq9RVXlj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxlogscore=816 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250136

On 17.10.2024 12:27 PM, YijieYang wrote:
> From: Yijie Yang <quic_yijiyang@quicinc.com>
> 
> Enable the SerDes PHY on qcs8300-ride.
> Add the MDC and MDIO pin functions for ethernet0 on qcs8300-ride.
> Enable the first 1Gb ethernet port on qcs8300-ride development board.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---

[...]

> +
> +&tlmm {
> +	ethernet0_default: ethernet0-default-state {
> +		ethernet0_mdc: ethernet0-mdc-pins {

If you don't intend to modify these specific configs, you can drop
the labels from child pin nodes

The rest looks good

Generally refactors happen first and features are added later, but
I know how painful it is to reorder changes in a patchset, so I'm
not going to ask you to do that.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


