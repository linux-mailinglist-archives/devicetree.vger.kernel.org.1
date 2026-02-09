Return-Path: <devicetree+bounces-264096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBheC2AYimmsGwAAu9opvQ
	(envelope-from <devicetree+bounces-264096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:24:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 987EB113070
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B91643035885
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865F638A288;
	Mon,  9 Feb 2026 17:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuVZU+j5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ftEEYL7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D87389E0B
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 17:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657826; cv=none; b=TxuN2n9ES+KtWC1FkPLQowcHgOnnAZwHTus4f2lzPbP5QS/u8AWYfVU4Zby+8dwthfR2q3rg7FKI7X7xRcxI+a0OQn9UNDHGgzsPf2oGezV28tIoqPlMLLS79/nHscWHVDQyFO5+MSJb6jY/S9v3Z90qv6nF5fHZ2h50uLJzZiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657826; c=relaxed/simple;
	bh=tNiEjlgAVv8hjtDJWGggX5NGcn2AHeRiES9LtbdL2n8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5og0RPnhLYdYYcg6GVcrnfnwUckdJ6WEUMiroAXMbzvqhpjxKHAm/0u/mmWLuHc4RSdH5DjriWVUHw8Uxe2wUbtzUq1RNxEnQjJR1JWI3wJyB4soDiqZr7lSHy81HHf6VUhzH9NpeRcBSS8b6Ht7aoQ/bQYc/YPL/acJxIdsLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuVZU+j5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ftEEYL7v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619DFMuR857404
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 17:23:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nKBKk6gqAHFPDJeGGIwYuEXPKG9/jo3JCSTnT3Can6g=; b=KuVZU+j5CMlnLppc
	naKW8opmc6lyMlQid2lE6Bl//Wl0T4WD2vBBR+efHoL3b+VOhXYLn2ASSjZVwxjd
	D4VqDuPLgDNXDX5VJiZAm0jhHAya/d/qjGWpRsjRHUbRz12z+t9ebLAA5+9GYtcJ
	joigTMG08Wvm5i7ReLO0uDJBlKUXthyu9PhS/uYx45IQKlrV8dH5zZulwlVhFgTO
	lrjVfkjobRmiY5RYNq6cSFDAmeBnlinDZyuWE5TDjnadc3N4ef362lbW5YGTYVVs
	vnLPtxQQIhjmvwVXmNk7ZjvT9f9pQDZwa0wStiidjPLyBDk9mkomKFP4emWLUURO
	5H3ynA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7ga60u45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 17:23:45 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ba68ed568bso473409eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 09:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770657825; x=1771262625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nKBKk6gqAHFPDJeGGIwYuEXPKG9/jo3JCSTnT3Can6g=;
        b=ftEEYL7v1tUo6onwDKobaMmeY6EUcx6lFmeatVvJ4GFLKMxltbeTzZ9kyTRdF9VJkY
         7pu4k5UxTsf6hlJ0yyX8y/iVaxKtM2FteOVWy8bIK9fn+09QZfVD3d3Hlm10QsEOzmwE
         F+1ndjCCQ5iiaZIGhSgo+5dCHuyVhyT5pZxk+OZTKHBM5npj1k7V8w+ygWJdW/AjgU6l
         TSDSdE7SpjKQLHiftEBGukfDgHeM0t+xwio1cl3FkC+swTx9HIk+j/Wu7BdQwsLSrrbu
         nhulIekOmBnTnudYLAh3LtOD47fegBBdsE89hREpUWybpTJhpG7loUAwbdMEptULalZ+
         KJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770657825; x=1771262625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKBKk6gqAHFPDJeGGIwYuEXPKG9/jo3JCSTnT3Can6g=;
        b=tfCLJ76xdzpcZmz5inhmeMyC8NngUYAXUis/aMTAISqGS1WDR3kJ2ebj1ePBN0V9AZ
         x/d+eCGTQl33URzdn3ZlyUrj85bG24qiDdKp7DIoMxQsCqKXtkP9XOGF2rVpMAyvjRqi
         kixvSx3I5cjMvTN3hVDdJnyWN087+As/LfMMiLUpqk/uvgEcVuucI1li+H5rVX0TVAHg
         PnR0SLootHrZtR0kwQkfIRscRJkPo3x7v9yvjF/9YqcYkDFL812vFGncM2JrLAJPDV0f
         qtY8p9tpwVl3IntbBnoCNovxAO68piN4GzA2i4O9mMyApIXqYJBbJ6FaDOcZi5Z1Zmb/
         4SyA==
X-Forwarded-Encrypted: i=1; AJvYcCXzLYf/myLLOq9x1e9Gg/llpQnambOEfTPOcl7kP4jP5tfahcRO3xwO5Cs7gLuD6U/CgAmWIPE4WebC@vger.kernel.org
X-Gm-Message-State: AOJu0YwDaDSpW8sv4qOEY+RJ+L0a7qEjKOvtHo+kEc+E8MH8T/LXWizz
	Rpn2uxjuuz6xBbfvnvKs6TJ5y01dFABtuONy4wMtOFn3/2o4mxxkULs9FGzGZGPzLejtqRpa92q
	xZaLIAzhJu1ZcxabA46YMXZztddHNZ5HxY1uPPtAVYYKxhDKqkHNLqvoRmUWtMyBE
X-Gm-Gg: AZuq6aKl4hr9md5004llsVIJyw2hx1oQoRST0he6mQqP87b6hvoT2rR40gZAzm7T4zW
	BVm5ZIfPFv54sbUbkfGUn/XPzFhrlEQOPG9u6G2ILbzVgYLG/XibWnBvtJrort2y8ujklSRdwXK
	aP0SMyAh4s2m2enPP4uWXRZXCgUI7DXZcApDmRpNZVLoBnofLC/ihLxu/yXJJZvFTdwkBqB9+x0
	G1sBvN/w0fXw/uC/+AMY0UywdWeIfngFgrCgWkGoW5ws28MGgZHkI4DU0HjzBEWYihhi0Tmyw1r
	N26RgiT8Jf6cjOpyeJkEmZXnhS+1wGNyppPq9W6tDqtVQ4TzRyVxumepBJ76T5dKTZMwXVJN17P
	0hozdJdQlYjW/nv7XOVUwGb+Qsqg4fdvmJMT8M7U=
X-Received: by 2002:a05:7301:4e09:b0:2b7:c285:837d with SMTP id 5a478bee46e88-2ba884a9c27mr78914eec.4.1770657823240;
        Mon, 09 Feb 2026 09:23:43 -0800 (PST)
X-Received: by 2002:a05:7301:4e09:b0:2b7:c285:837d with SMTP id 5a478bee46e88-2ba884a9c27mr78902eec.4.1770657822553;
        Mon, 09 Feb 2026 09:23:42 -0800 (PST)
Received: from [192.168.1.133] ([70.95.199.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba71a0af3dsm2488984eec.0.2026.02.09.09.23.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 09:23:42 -0800 (PST)
Message-ID: <94000dfc-3672-4453-9b56-420404a79fec@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:23:40 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/9] usb: misc: qcom_eud: add per-path High-Speed PHY
 control
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <20260126233830.2193816-4-elson.serrao@oss.qualcomm.com>
 <9f81c07a-c1c6-4888-975d-528a6181caea@oss.qualcomm.com>
Content-Language: en-US
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
In-Reply-To: <9f81c07a-c1c6-4888-975d-528a6181caea@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: nfscmLY9xZ9JBzqlxJYz5_PrufEOPToc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE0NiBTYWx0ZWRfX3wjsClXKTD+y
 e4OPzIgHK7A2ZxnxUDnqo4ihbQrcv6VLySi8sqweO1D2L0IUsirTe+8ZWa6m0PuTSf5mUopfn3n
 IrDUOp8D0RYs0pCUtbniF9CdQRrYvShRoh+Rq8rPwYfxXnLsP6IlcNLMAIc/wkFqHz2/C/ateZ9
 KAS/R0VUPEZIyXq4DWbnfYF1JIbHiqq7hGYmYAzVj/wBLHyEM4VO4lcw3o4VNk3xEoeMQtaQo05
 I1Tu8a8mLJhvqcC302a6Ud8vDP/VZDReG7SNUZYWFanhD7lccdx3Yq9RGEpyh0JacUjxAVACVjP
 GIZBPgjz30UDxxFlmjTbGEdgNff9TdHONdxwCejH9CwtJ+Oyifi8qthioHnMRKiwWfo1nzvDZQq
 9kgGJhHxzHM3ajHKRSR5jELC9QRQwRr3OSz1FG0NrKp+E80wzyGUxKVGOXiPDEypkekwFO2Ob03
 L8IbNT2FdmHsNytgGBg==
X-Authority-Analysis: v=2.4 cv=WK1yn3sR c=1 sm=1 tr=0 ts=698a1821 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=uHxescsG3rBdxcXwcPaeSg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=i2ahz-mu8vMz2UVK6u0A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: nfscmLY9xZ9JBzqlxJYz5_PrufEOPToc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264096-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elson.serrao@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 987EB113070
X-Rspamd-Action: no action



On 2/4/2026 5:21 AM, Konrad Dybcio wrote:
> On 1/27/26 12:38 AM, Elson Serrao wrote:
>> EUD hardware can support multiple High-Speed USB paths, each routed
>> through its own PHY. The active path is selected in hardware via the
>> EUD_PORT_SEL register. As a High-Speed hub, EUD requires access to the
>> High-Speed PHY associated with the active UTMI path. To support this
>> multi-path capability, the driver must manage PHY resources on a per-path
>> basis, ensuring that the PHY for the currently selected path is properly
>> initialized and powered.
>>
>> This patch restructures the driver to implement per-path PHY management.
>> The driver now powers the appropriate PHY based on the selected and
>> enabled UTMI path, ensuring correct operation when EUD is enabled.
>>
>> Supporting this requires describing the available UTMI paths and their
>> corresponding PHYs in Device Tree. This updates DT requirements and is
>> not backward compatible with older DTs that lacked this description.
>> Historically, EUD appeared to work on single-path systems because the
>> USB controller kept the PHY initialized. However, EUD is designed to
>> operate independently of the USB controller and therefore requires
>> explicit PHY control.
>>
>> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static int eud_phy_enable(struct eud_chip *chip)
>> +{
>> +	struct eud_path *path;
>> +	struct phy *phy;
>> +	int ret;
>> +
>> +	if (chip->phy_enabled)
>> +		return 0;
>> +
>> +	path = chip->paths[chip->port_idx];
>> +	if (!path || !path->phy) {
> 
> I think neither are possible - path is != NULL since we can't enter into
> this function without failing the check in _store and !path->phy would error
> out in probe()->eud_init_path()
> 
> [...]
> 
>> +static void eud_phy_disable(struct eud_chip *chip)
>> +{
>> +	struct eud_path *path;
>> +	struct phy *phy;
>> +
>> +	if (!chip->phy_enabled)
>> +		return;
>> +
>> +	path = chip->paths[chip->port_idx];
>> +	if (!path || !path->phy)
> 
> Likewise
> 
> [...]
> 
>> +static int eud_init_path(struct eud_chip *chip, struct device_node *np)
>> +{
>> +	struct eud_path *path;
>> +	u32 path_num;
>> +	int ret;
>> +
>> +	ret = of_property_read_u32(np, "reg", &path_num);
>> +	if (ret) {
>> +		dev_err(chip->dev, "Missing 'reg' property in path node\n");
>> +		return ret;
> 
> You can use return dev_err_probe like you did a little below
> 
>> +	}
>> +
>> +	if (path_num >= EUD_MAX_PORTS) {
>> +		dev_err(chip->dev, "Invalid path number: %u (max %d)\n",
>> +			path_num, EUD_MAX_PORTS - 1);
>> +		return -EINVAL;
>> +	}
>> +
>> +	path = devm_kzalloc(chip->dev, sizeof(*path), GFP_KERNEL);
>> +	if (!path)
>> +		return -ENOMEM;
>> +
>> +	path->chip = chip;
>> +	path->num = path_num;
>> +
>> +	path->phy = devm_of_phy_get(chip->dev, np, NULL);
>> +	if (IS_ERR(path->phy))
>> +		return dev_err_probe(chip->dev, PTR_ERR(path->phy),
>> +				     "Failed to get PHY for path %d\n", path_num);
>> +
>> +	chip->paths[path_num] = path;
>> +
>> +	return 0;
>> +}
>> +
>>  static int eud_probe(struct platform_device *pdev)
>>  {
>> +	struct device_node *np = pdev->dev.of_node;
>> +	struct device_node *child;
>>  	struct eud_chip *chip;
>>  	struct resource *res;
>>  	int ret;
>> @@ -252,6 +368,18 @@ static int eud_probe(struct platform_device *pdev)
>>  	if (ret)
>>  		return ret;
>>  
>> +	for_each_child_of_node(np, child) {
> 
> With for_each_child_of_node_scoped(), you can dispose of the manual
> _put()
> 
>> +		ret = eud_init_path(chip, child);
>> +		if (ret) {
>> +			of_node_put(child);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	/* Primary path is mandatory. Secondary is optional */
>> +	if (!chip->paths[0])
>> +		return -ENODEV;
> 
> I'm going to assume we don't have any funny chips that violate this :)
> 


On all current SoCs, EUD_PORT_SEL defaults to 0, and the hardware guide
defines this as mapping to USB port 0. So the primary path being mandatory
is a valid assumption for existing hardware.

Thanks,
Elson


