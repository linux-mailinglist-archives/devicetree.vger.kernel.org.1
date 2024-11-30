Return-Path: <devicetree+bounces-125722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 694F39DF065
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 13:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC906B21927
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 12:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F13199244;
	Sat, 30 Nov 2024 12:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pyyD8LzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09115148838
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732971006; cv=none; b=HZI50frP8obX4yOX+qKJgBLLs228Mg/v/v13GsM7eJ2rzVEVSn7IqhF9BiJSPc6WiAzULUPx2NgK2pXwEZ1/NBUTZtyaV3hXj1bVRrJIpigsklx9jOLiJS2R5wm50nYJhOVjqggsSWvKftxmQelUhhht36X7TS30KffAaP4zgRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732971006; c=relaxed/simple;
	bh=QDea+3e+cuoPAYkLcmeYbatc/ECyB4Kti6MbiVdXAmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HcS5nXLtg3AzOaUgOZovk1JbwOr2WrqdsNXlWwqygj8syzMlXUjNStRUP2EI3N7REmaoazofjKeVv6uG768S8xYYPYz3a4FSjKlLl178yU7oFtxoD8Pr4P3ZdNBUCOXAD+TFccjgkdep5cVU1u2dCdpDkuo8DTVxN4mXPzRFx18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pyyD8LzA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AU5SPGc016257
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:50:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hwEVoeZgfVpqkrEBH0FyIu3xxM7tj2jKoU6z06itptc=; b=pyyD8LzA+RyeCqfj
	WsAo2JjFrSRAhYatAeT8MzKEw1CEyO3IG/oGRJ6KoKmrbpaA6veGFithDwoy2MTY
	qx5xFZdVMdjXq8jkf9r//mYuEYAhxg+nve8EKPBo96WD5UjWsiCFC/JMAZH2Q1oc
	c8+qywFaFZz8VGi6ifKDTl+ui4GBpzs35+N76AVuc6DxVELkSG7HTzEf1JRCsYUr
	WyAb+oLvyi9j6GPWFpLR5XeZw1ULxSFO6YXVbLpy5R5X1d3Bpj0ltigiewjYHSj+
	gLdOWF9KML6MeGpArTbTiOIvha40pKshDZqGs0EbTa0LkjWNuTSRmrP6AZiQiLN+
	Vf5JWg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437t1g8std-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 12:50:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466d3ec228bso2108531cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 04:50:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732971002; x=1733575802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hwEVoeZgfVpqkrEBH0FyIu3xxM7tj2jKoU6z06itptc=;
        b=vCFSNSVoByNCzpnukaDhYpZONVkKHgHNntVuifIFD9a1EjHCEatKGJ9leRSQKO8K4f
         74iJlFTUEFDsBK6uPyOXci5ACVorCFOXbEJbPszMceiaiRhmwcZWeoYIa+8Ni1ggO/Ze
         GVZoPzhJ+d8b3CkAcPV1Jama5hSWK7aVp3aQLPQVa+cmO93owDC20hjHZv54gzDOTV5j
         OP8TxS+P1/NdnYNt/76fsHMxcy71Ns9BwoYgHPe6MDwNxvc817K3xXPLtx/waBAWkvLo
         8vmPobW6+IPFpEqT7LEj74IbIVEXxIl2j21Uysd0wsI7I768hmynTLYzOCLituUQ5sRt
         5kQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZpoeupUiA1hLeHGWxs4KGYzWrES4c644WHgXr7ZzhiwSn4ClbC/7CJgAnnV1LNen4zx/+V3IeriUy@vger.kernel.org
X-Gm-Message-State: AOJu0YzonPjNj7jCVTf8MVKB2y151EXnVDZtSCwPix95ETuCd0N1Y9/z
	VBGw53jwcIUg9OBnRxLP7GJ7UbAL4bTXeNC0rBhWXQzvC3DwhJs28OSVgf5rNYmCXir9AhfdGA2
	np4mIauIWoN+bn4LI4AA6h3e+DT02H8+wRHSYJWd7WDW1Ihz7X+ZZuT+MvBVQ
X-Gm-Gg: ASbGncucWWTia+Uc/7xFe34oP3U/r6sazw7WAvNKV7djiqcCorV4UiAkVRw1LYq7aVR
	7AM6aT84MxMTR3wbRraMX1RnM+Gkv5uvFaDfr8ziokP9UXpVkjXfmGxe7bdB3g7jNz2PoE/Ni9E
	bp7MVVZfFAmla03FcsElrS6bEr1Rluzy/aY1qMlXLuIm07LorMWaHv2vhGQbVfxAoz+IQX/z24U
	MLDwSGbhROE2BWm84TTx5iOz/PS0EgPMJ275avkG/+cJQDzpp4UypSGpUvgUaUylcNFslarxNxp
	G7URcP1d8XJ4OQ045xngzQZEw2couuQ=
X-Received: by 2002:a05:622a:389:b0:462:fb65:cbb5 with SMTP id d75a77b69052e-466b36886b8mr96997831cf.16.1732971001988;
        Sat, 30 Nov 2024 04:50:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcEk4zpcaPKGI305nMIFuY+OFtLWrdliZRQ3XgvCXbaX18+LdB778zQ6l/S2wnobvtgyPCVg==
X-Received: by 2002:a05:622a:389:b0:462:fb65:cbb5 with SMTP id d75a77b69052e-466b36886b8mr96997421cf.16.1732971001537;
        Sat, 30 Nov 2024 04:50:01 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097d9f330sm2815866a12.9.2024.11.30.04.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 04:50:00 -0800 (PST)
Message-ID: <2b95cc25-a842-4edd-a5f3-2351038d264e@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 13:49:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 1/4] interconnect: qcom: Add multidev EPSS L3 support
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Sibi Sankar
 <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com>
 <20241125174511.45-2-quic_rlaggysh@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125174511.45-2-quic_rlaggysh@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: R6lV_3VJxcTkE_oIuz7JN1BegNKAqLuQ
X-Proofpoint-ORIG-GUID: R6lV_3VJxcTkE_oIuz7JN1BegNKAqLuQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300105

On 25.11.2024 6:45 PM, Raviteja Laggyshetty wrote:
> EPSS on SA8775P has two instances which requires creation of two device
> nodes with different compatible and device data because of unique
> icc node id and name limitation in interconnect framework.
> Add multidevice support to osm-l3 code to get unique node id from IDA
> and node name is made unique by appending node address.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---

[...]

> +	ret = of_property_read_reg(pdev->dev.of_node, 0, &addr, NULL);
> +	if (ret)
> +		return ret;
> +
>  	qp->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(qp->base))
>  		return PTR_ERR(qp->base);
> @@ -242,8 +262,13 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>  
>  	icc_provider_init(provider);
>  
> +	/* Allocate unique id for qnodes */
> +	for (i = 0; i < num_nodes; i++)
> +		qnodes[i]->id = ida_alloc_min(&osm_l3_id, OSM_L3_NODE_ID_START, GFP_KERNEL);

As I've said in my previous emails, this is a framework-level problem.

Up until now we've simply silently ignored the possibility of an
interconnect provider having more than one instance, as conveniently
most previous SoCs had a bunch of distinct bus masters.

Currently, debugfs-client.c relies on the node names being unique.
Keeping them as such is also useful for having a sane sysfs/debugfs
interface. But it's not always feasible, and a hierarchical approach
(like in pmdomain) may be a better fit.

Then, node->id is used for creating links, and we unfortunately cannot
assume that both src and dst are within the same provider.
I'm not a fan of these IDs being hardcoded, but there are some drivers
that rely on that, which itself is also a bit unfortunate..


If Mike (who introduced debugfs-client and is probably the main user)
doesn't object to a small ABI break (which is "fine" with a debugfs
driver that requires editing the source code to be compiled), we could
add a property within icc_provider like `bool dynamic_ids` and have an
ICC-global IDA that would take care of any conflicts.

Provider drivers whose consumers don't already rely on programmatical
use of hardcoded IDs *and* don't have cross-provider links could then
enable that flag and have the node IDs and names set like you did in
this patch. This also sounds very useful for icc-clk.

Konrad

