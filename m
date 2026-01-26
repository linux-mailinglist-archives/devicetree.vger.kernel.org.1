Return-Path: <devicetree+bounces-259491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IwXDCpod2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:12:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A05A688A2A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20FA93031CE3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB82333858E;
	Mon, 26 Jan 2026 13:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p5daGqis";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VImFgAp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5E23382F2
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433055; cv=none; b=DjfYi25BXrXM7r2itaG9LkEeWxSdCU9R6cGrvM1hB1DqqmdbEwR1BcjnStQzs3ynkU92HuhrgRThYMHpUW1YaoNuQLOv0K1Y/WRfg9m8WDYrt4HBy90fmmHQryAqV/uL3d4dGhtQ8k833M+cVinfUPgMX7qP+DP/ugYvlehr9W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433055; c=relaxed/simple;
	bh=9gg/rH3rHtBuveZ+oLpfUKeKNczDdvgGGJXufkgtH2w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=knv6zPC7hy7K9vG8S8i8mlOAQFn+yunu+nqKuaMjoV1lwrDLHTcP3xjeFhVyLdh+Bj98lhQRixlOWbbLxpkdgUXFzrtyeJ65J4odyRE/56lNLYMp4coZ0cN7BMJSzbzv2DGIT4SwCOv1cAcYZCghGmBxb6IWjhnnn5Acr9qYgeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p5daGqis; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VImFgAp+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q75RG53775507
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:10:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OFl9hdLRbfuO/T+F74/xSa3xR1jY6m4cGs7bFXgWTNQ=; b=p5daGqiscJJJHSRn
	6R/HzI/TYlswN4evyrEv26oc4WkWYBG76YHw/8dYuAWwWWftQ3jlviKevuJF2lV+
	0irGttv4R7K7aT8fT6JGJIEtbMCa2EcG/Q1eyHhHIO6tkqNpkR0qbP5E7pMz250A
	+qTPhGUR2JCw/xQvJrg2BsigUi5ShWbWq1hJVFrTNozObV42J8wqHyWeFrW5qOYj
	N2yOd91Iwb4LHcJRLJgvy86bTSx8JHQQCIVvIpwiOQsCeXpDgUGHJICOvA93OE31
	cOuyxzyWnSZ8Uf1TDXnOQRS7Hg8iSbryg2TuIaH47Pzboa9E1b3N2GTr66Dv2AZC
	aKCnZw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9tvhvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:10:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-352c79abf36so3693491a91.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769433052; x=1770037852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OFl9hdLRbfuO/T+F74/xSa3xR1jY6m4cGs7bFXgWTNQ=;
        b=VImFgAp+kp+SZXaflcsAMJE3P9Gy5WkGxIWeZLP9HA6noAeNxApuiFrhc4Dcb4mLTD
         t1Y2mJi26MdpGVEVBPEq0XyBNluDkg+zPWVycgXrjDbRMPwqp5q7/bNO6Sl2fzeaO14I
         nnM9XLerYEdQSgSukfDwux4CXpvoiyoZsmwsdYmnOsjOORNzkrzTNno0FPlTRw2UwZRK
         X+yhPV27xv4PIRSEYJeiSJKlpcJf2gVC59QJ8h//fBtE2wurhifHEyIFDUFiSbc/iQd+
         oMdivfB7Pm6tj9pONRRda9PByLdlsaYANZx1QMo5tg/E/B6+hy6o+p6QtmFQh1OYlG5n
         rcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769433052; x=1770037852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFl9hdLRbfuO/T+F74/xSa3xR1jY6m4cGs7bFXgWTNQ=;
        b=A8f1x5Q3yOlcJWptz9GGT1t8/1p7HEm7XVyyzBZ/JqwX6SZ5qrYK7F5at8HTGtMOQ3
         +LEOegUQuDi7sr61So63daOmQWSk13aCJflAAxIIWk8LE3tRhBHCaA3U+tTZh/rVAw2f
         hc6YoT03eYyeHdcrxCoUWTyPOsjf6Ys98k/+MzqnM3PyOgmD/6dRwdqRsU66NIH7oLQh
         uQxGiq62h6ZdYeIWu2ZNtSaBQAZbHDsL+MceGVNASvC/kqfDo2lwSMTP+50HwEPTcH61
         AMzd6B7XgXhk2g5eFKkrms7XiTFbd1lSJhKXYH6dQWiwaRnsxgcMoaV/zkB8hitPwzEM
         XWfA==
X-Forwarded-Encrypted: i=1; AJvYcCXYwu3cLktBpMD/V9eSzAPtxdd3IJ1wyg9lcFNdyWv/M9n+ab3xfxzFJUJwDDWJi2RlC/SxQP4LEJKV@vger.kernel.org
X-Gm-Message-State: AOJu0YznzfpBATceLfhMjzlr6dpCvJLojqe6VEhpYla/JuxrHxB3uwXs
	W5EXe3PN3Of5GjjRKE/3O6k/6hZ2pGccJ1VB4x6cToCj6yvRmHgI2FqRtQshC6EIBZ9rrH7dvl4
	9WC4jdm7YYDuYz6OVrrimjr92LBGJmRpZTbFxplKkGYKZ+kZJrAsniyxX8pVZxroF
X-Gm-Gg: AZuq6aKMvbehpiU95rQMfDA9qfARz9VCq++KjwkOtHxADnqZXHXwZaoUZhOS+QMo/gq
	mjCZRlTGlsD6BgmfZ1SqfLDk0XQAwHLquFvgW6peeI0Xnye3ig6iFy14H2msTw/F9BjQkUdwV0D
	LKzAgVzBuCBpkifmjEWQ2PbkXUpzqJEaTAQPO1NWX3ZR1sr6gLQNexGn9RM/+nQ4KA+TK8GV8ok
	5zcu/l3d23HOO3oNtZd+RQb5MQUkC8lMd+oDC5ngwHv90Ukt3BXJ1R56uL/6w6uhnT4id17PRVD
	wv/qlRLsUMsF0z+AUJ5enc6FFQW9CnZG0MTT1oQh/Fi2XXVJ2Cl7v2z0PDwM/0a7Pnl4KLlayA2
	KXLAKwwTKnd6Hn8cp1Xc/Ctga5hF0/A+kD5c4g6hpN/2QWfICcv5X
X-Received: by 2002:a17:90b:1f8a:b0:34f:454f:69a9 with SMTP id 98e67ed59e1d1-353c4175b83mr3472695a91.28.1769433051822;
        Mon, 26 Jan 2026 05:10:51 -0800 (PST)
X-Received: by 2002:a17:90b:1f8a:b0:34f:454f:69a9 with SMTP id 98e67ed59e1d1-353c4175b83mr3472671a91.28.1769433051254;
        Mon, 26 Jan 2026 05:10:51 -0800 (PST)
Received: from [192.168.29.125] ([49.43.234.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536dc3e1aasm8680642a91.12.2026.01.26.05.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 05:10:50 -0800 (PST)
Message-ID: <d160aa9b-d22d-4c12-ab4f-42b5dff375b5@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 18:40:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: glymur: Add Mahua SoC support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20260123-mahua_icc-v1-0-bc82cb087f1e@oss.qualcomm.com>
 <20260123-mahua_icc-v1-2-bc82cb087f1e@oss.qualcomm.com>
 <vpaz7jhnuagfl24dow3ktyhjtzktmhiiwh2rnflub3jbc3pgu2@2ydlmugmqgbt>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <vpaz7jhnuagfl24dow3ktyhjtzktmhiiwh2rnflub3jbc3pgu2@2ydlmugmqgbt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDExMiBTYWx0ZWRfX2WKKUaSaPGxi
 osy2bfH3kbo3IWL/tVwED1IkMT8edTlnrMgfkzjhzjndSaTnZaMDHBIJ1njbiiYiQzQErd3pexr
 n5BIPEjcihihrbf3nryGCKkPxc2EEfRdvXKRPMXXiBMqJ4M080B2zcy7DrAeu87nKMS5GCO5Pep
 lMktoedb4ZqGNjZUlzSU4f3gRAnI6H6yFg5oUgIs5lXn2lyIMrCNn7Ewd6OHtmY651jeWh82P9w
 GQ4yiaEaNogJllouxcO2OU/Pzjxpp06MdEXJWfBlUaOn6cLyVyX0X/qNeAw9evu28aifLCX0Imd
 Z5Rodqu/TIcAHDRm319XUGiLp3Z5Pr+V359bwbm+8L/hBXnBE6FxUylmgG6Q+UZZlVFeXfPV3Ey
 Wkhw+Osw5chHjrzcLqZzyFpbpuAwPYKAPhYJgUPVuHJTR/MHpWlfsPim0CPUadv0lfXtcmEkw0B
 sd+Aj0e6c4vm0O4ToBw==
X-Authority-Analysis: v=2.4 cv=QN5lhwLL c=1 sm=1 tr=0 ts=697767dd cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=y/Pne2EoOvGgihOE/QD3VA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GM9RiBoW67VDSbq6NmgA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: byIVjofezs1IjVRThd-fl0Qqwvc0lmXj
X-Proofpoint-ORIG-GUID: byIVjofezs1IjVRThd-fl0Qqwvc0lmXj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259491-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[raviteja.laggyshetty@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A05A688A2A
X-Rspamd-Action: no action



On 1/23/2026 11:28 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 23, 2026 at 05:12:36PM +0000, Raviteja Laggyshetty wrote:
>> Mahua is a derivative of the Glymur SoC. This patch extends the
> 
> Documentation/process/submitting-patches.rst, look for 'This patch'.

Will update the commit text, in next patch revision.

> 
>> Glymur driver to support Mahua by:
>>
>>   1. Adding new node definitions for interconnects that differ from Glymur
>>      (Config NoC, High-Speed Coherent NoC, PCIe West ANOC/Slave NoC).
>>   2. Reusing existing Glymur definitions for identical NoCs.
>>   3. Overriding the channel and buswidth, with Mahua specific values for
>>      the differing NoCs
>>
>> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> ---
>>  drivers/interconnect/qcom/glymur.c | 153 ++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 152 insertions(+), 1 deletion(-)
>>
>> +static struct qcom_icc_node * const mahua_cnoc_cfg_nodes[] = {
> 
> As you are patching other instances, why can't we just patch out the
> PCI_3A out of these structures?
> 
>>  
>> +static int glymur_qnoc_probe(struct platform_device *pdev)
>> +{
>> +	if (device_is_compatible(&pdev->dev, "qcom,mahua-mc-virt")) {
>> +		llcc_mc.channels = 8;
>> +		ebi.channels = 8;
>> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-hscnoc")) {
>> +		qns_llcc.channels = 8;
>> +		chm_apps.channels = 4;
>> +		qnm_pcie_west.buswidth = 32;
>> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-pcie-west-anoc")) {
>> +		qns_pcie_west_mem_noc.buswidth = 32;
>> +	}
> 
> Right here, set the node entries to NULL.

cnoc_cfg_nodes is declared as an array of const pointers, so the pointer
values cannot be reassigned after initialization. To change the addresses,
the const qualifier would need to be dropped. To preserve const, the 
entire array has been duplicated instead by dropping the PCIE_3A related
nodes.
> 
>> +
>> +	return qcom_icc_rpmh_probe(pdev);
>> +}
>> +
>>  static const struct of_device_id qnoc_of_match[] = {
>>  	{ .compatible = "qcom,glymur-aggre1-noc", .data = &glymur_aggre1_noc},
>>  	{ .compatible = "qcom,glymur-aggre2-noc", .data = &glymur_aggre2_noc},
>> @@ -2477,12 +2623,15 @@ static const struct of_device_id qnoc_of_match[] = {
>>  	{ .compatible = "qcom,glymur-aggre4-noc", .data = &glymur_aggre4_noc},
>>  	{ .compatible = "qcom,glymur-clk-virt", .data = &glymur_clk_virt},
>>  	{ .compatible = "qcom,glymur-cnoc-cfg", .data = &glymur_cnoc_cfg},
>> +	{ .compatible = "qcom,mahua-cnoc-cfg", .data = &mahua_cnoc_cfg},
>>  	{ .compatible = "qcom,glymur-cnoc-main", .data = &glymur_cnoc_main},
>>  	{ .compatible = "qcom,glymur-hscnoc", .data = &glymur_hscnoc},
>> +	{ .compatible = "qcom,mahua-hscnoc", .data = &mahua_hscnoc},
>>  	{ .compatible = "qcom,glymur-lpass-ag-noc", .data = &glymur_lpass_ag_noc},
>>  	{ .compatible = "qcom,glymur-lpass-lpiaon-noc", .data = &glymur_lpass_lpiaon_noc},
>>  	{ .compatible = "qcom,glymur-lpass-lpicx-noc", .data = &glymur_lpass_lpicx_noc},
>>  	{ .compatible = "qcom,glymur-mc-virt", .data = &glymur_mc_virt},
>> +	{ .compatible = "qcom,mahua-mc-virt", .data = &glymur_mc_virt},
>>  	{ .compatible = "qcom,glymur-mmss-noc", .data = &glymur_mmss_noc},
>>  	{ .compatible = "qcom,glymur-nsinoc", .data = &glymur_nsinoc},
>>  	{ .compatible = "qcom,glymur-nsp-noc", .data = &glymur_nsp_noc},
>> @@ -2490,14 +2639,16 @@ static const struct of_device_id qnoc_of_match[] = {
>>  	{ .compatible = "qcom,glymur-pcie-east-anoc", .data = &glymur_pcie_east_anoc},
>>  	{ .compatible = "qcom,glymur-pcie-east-slv-noc", .data = &glymur_pcie_east_slv_noc},
>>  	{ .compatible = "qcom,glymur-pcie-west-anoc", .data = &glymur_pcie_west_anoc},
>> +	{ .compatible = "qcom,mahua-pcie-west-anoc", .data = &mahua_pcie_west_anoc},
>>  	{ .compatible = "qcom,glymur-pcie-west-slv-noc", .data = &glymur_pcie_west_slv_noc},
>> +	{ .compatible = "qcom,mahua-pcie-west-slv-noc", .data = &mahua_pcie_west_slv_noc},
>>  	{ .compatible = "qcom,glymur-system-noc", .data = &glymur_system_noc},
>>  	{ }
>>  };
>>  MODULE_DEVICE_TABLE(of, qnoc_of_match);
>>  
>>  static struct platform_driver qnoc_driver = {
>> -	.probe = qcom_icc_rpmh_probe,
>> +	.probe = glymur_qnoc_probe,
>>  	.remove = qcom_icc_rpmh_remove,
>>  	.driver = {
>>  		.name = "qnoc-glymur",
>>
>> -- 
>> 2.43.0
>>
> 


