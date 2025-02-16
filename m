Return-Path: <devicetree+bounces-147159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5EAA375DA
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 17:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 998867A1617
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 16:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A7D19AD90;
	Sun, 16 Feb 2025 16:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="esO2Fg5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD5A3D6F;
	Sun, 16 Feb 2025 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739723965; cv=none; b=t11ZDaGH4ggbpA0O6xRTveQhuKxajiyJDRfGJT21Ud0rFCQCD6benBm0qS69q09DUnG2z6m0TibaCVF1SHBm73wt7t8+mqNMhcx40qV4SAlJfvhE7iiagO/JfgzW6QJAb6mbJ9h/Va+Ku2C/AKhKdvRV9Gj5VQLJGtOJw91jUpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739723965; c=relaxed/simple;
	bh=F7lxG+YyUpyZN5BDO1TWo52GvkiZpf4iGTTc9DJNJZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=kQNwpk7j2Kx4J+XSKfh4oXX/Z36m9y2HzPJB6Ox6iYh9yk+YPneBS2mcrntnEYKTzTUTL7LpHBLTG2bBV/4HTQVR5YeS+oj+DS9nOpllysESUAIZ/5pW6tpEOG+kamaXHJ2uxDnHl1TgSeSuEgnyF9zK0LaslOWpgRSDvBsZYj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=esO2Fg5n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51GEsrNq018208;
	Sun, 16 Feb 2025 16:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jybwYLBxnC29e5G9/7UFhw8l7MCD8xAgH5D9/8Aq3Wc=; b=esO2Fg5nYbgHipOi
	D36/g3dkeCDxeKMAX51sotQeJW9QXiI8pXWFUhLZKv+WLe3oHb/Ohe0sexN8Ofzd
	GdIqDJk/NsJvD5Feg/zS27q8SEpF9XrkrUt36thEax0ou3jxSghuIHgifFdg6zgn
	DE72sU7Uxi6zwEn8g8sbZswQg9awcjwAD63PRdb3VzPVYtWNmTV1/YarJLmHxen+
	l1iPMb1XguwwRyMoSjc84hJO9aggJioms6LtISAUCFZ4Zc7P9AEUQZKGYdeRQ2HU
	RInRbvH8PJiRFmDQwtcAaUC0Ox+BzE++XELearLbtozEwKw7fEV2ffs6emBWPVUN
	c7F21Q==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44tkwnaaee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 16 Feb 2025 16:39:14 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51GGdE5r019692
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 16 Feb 2025 16:39:14 GMT
Received: from [10.216.15.99] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 16 Feb
 2025 08:38:54 -0800
Message-ID: <f40f6b9d-8f31-4ce6-a912-1aa484863d5e@quicinc.com>
Date: Sun, 16 Feb 2025 22:08:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V8 2/7] interconnect: core: Add dynamic id allocation
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        "Mike
 Tipton" <quic_mdtipton@quicinc.com>,
        Jeff Johnson
	<quic_jjohnson@quicinc.com>,
        Andrew Halaney <ahalaney@redhat.com>,
        Sibi
 Sankar <quic_sibis@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20250205182743.915-1-quic_rlaggysh@quicinc.com>
 <20250205182743.915-3-quic_rlaggysh@quicinc.com>
 <bwiuhfgv4jw7tlwjqffgrxvskxbpf4forz46nn5g3vihz3z5od@w25y7hdprykf>
Content-Language: en-US
From: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
In-Reply-To: <bwiuhfgv4jw7tlwjqffgrxvskxbpf4forz46nn5g3vihz3z5od@w25y7hdprykf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3Y1V5aHKQunWBqCnAPPXtUPZVUhoxVbT
X-Proofpoint-ORIG-GUID: 3Y1V5aHKQunWBqCnAPPXtUPZVUhoxVbT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-16_05,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 mlxscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502160151



On 2/10/2025 4:20 PM, Dmitry Baryshkov wrote:
> On Wed, Feb 05, 2025 at 06:27:38PM +0000, Raviteja Laggyshetty wrote:
>> The current interconnect framework relies on static IDs for node
>> creation and registration, which limits topologies with multiple
>> instances of the same interconnect provider. To address this, update
>> the interconnect framework APIs icc_node_create() and icc_link_create()
>> APIs to dynamically allocate IDs for interconnect nodes during creation.
>> This change removes the dependency on static IDs, allowing multiple
>> instances of the same hardware, such as EPSS L3.
>>
>> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
>> ---
>>  drivers/interconnect/core.c | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
>> index 9d5404a07e8a..40700246f1b6 100644
>> --- a/drivers/interconnect/core.c
>> +++ b/drivers/interconnect/core.c
>> @@ -20,6 +20,8 @@
>>  
>>  #include "internal.h"
>>  
>> +#define ICC_DYN_ID_START 10000
>> +
>>  #define CREATE_TRACE_POINTS
>>  #include "trace.h"
>>  
>> @@ -826,7 +828,12 @@ static struct icc_node *icc_node_create_nolock(int id)
>>  	if (!node)
>>  		return ERR_PTR(-ENOMEM);
>>  
>> -	id = idr_alloc(&icc_idr, node, id, id + 1, GFP_KERNEL);
>> +	/* negative id indicates dynamic id allocation */
>> +	if (id < 0)
> 
> Nit: I think it might be better to add an explicit define for that and
> to decline all other negatdive values. Please leave us some room for
> future expansion.
> 
Do you mean to replace the value of ALLOC_DYN_ID from -1 to some
positive value like 100000 and to use it as initial ID for the nodes
requiring the dynamic allocation ? This explicit define can be used as
check for dynamic allocation and also as argument to idr_alloc min value
argument. Is my interpretation of the comment correct ?

>> +		id = idr_alloc(&icc_idr, node, ICC_DYN_ID_START, 0, GFP_KERNEL);
>> +	else
>> +		id = idr_alloc(&icc_idr, node, id, id + 1, GFP_KERNEL);
>> +
>>  	if (id < 0) {
>>  		WARN(1, "%s: couldn't get idr\n", __func__);
>>  		kfree(node);
>> @@ -962,6 +969,10 @@ void icc_node_add(struct icc_node *node, struct icc_provider *provider)
>>  	node->avg_bw = node->init_avg;
>>  	node->peak_bw = node->init_peak;
>>  
>> +	if (node->id >= ICC_DYN_ID_START)
>> +		node->name = devm_kasprintf(provider->dev, GFP_KERNEL, "%s@%s",
>> +					    node->name, dev_name(provider->dev));
>> +
>>  	if (node->avg_bw || node->peak_bw) {
>>  		if (provider->pre_aggregate)
>>  			provider->pre_aggregate(node);
>> -- 
>> 2.39.2
>>
> 


