Return-Path: <devicetree+bounces-225493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BAFBCE6E6
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 21:54:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2645A3A60FB
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C20301713;
	Fri, 10 Oct 2025 19:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jddvg2QM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956063016F5
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760126036; cv=none; b=nDNkWIpWjuQsZCrEWVFbY3R0fGB5yC13p5vfEJG2uq1UhLHYmEZI4pn+TIZcFN5LqV2cPHMin/MV2j11DT1sr3PUYxQGhM/J6fgmTtJGLp8ysNEv0yF4jwYfc3r0aZfhEc3BWjvyw7+9ZicjwTKVuVzr7j/4Wa1sI8v2lSvixi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760126036; c=relaxed/simple;
	bh=5b/h/Rp35LUmB9SEWYk1Tv6h8r31mjMf3n8/iHHk8HY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OKpEbkYwT2EdEF+9BhFK12msqk3h0AJv50fwwe+u4lOmJGMBGoV65aGJ+W6ES4TZs3zxXe0ej2OhcgVoU/+4lxUudxrqv7VxfIetXvRO33a4UQ0zVLLUKiuxJCoFrxMeLOXeGObgVpx8/4zwOso+Cra3LNgeqjphnjlocDsnDg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jddvg2QM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AFKAVM009567
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:53:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YFTq9SfFdhLMTERxwfmxv1dKsZDfHpEAvo+MIED1COs=; b=Jddvg2QMHQpfUDxi
	lzLIoH2yNczGccUwZLzDOmQdCs4e5ew880EMdytwWrlDuYw7x2n49SMEvWwLCpKP
	gEq8TjUELDtXwH7W9vc6LFS3vDF/LG9ajfQYEnbjOTPS0orCh0LjRTOhOOgYmOFY
	qOp71Qlll4jv0Ed5y3mV3zkRtoQ9hFKgb2lx+p6CRRlQg3adQsFJbb+enJkQBUuS
	IkdZZE7I69MLgagmvkVaMtazcH8iOW3VMVuRy1pHEg+daVB+FTbr2nTZK6aUCyBT
	cpd/0V0XxxVNeXiMDkmK66JfOEQWizoQP6eIPrtMCX4AjPQbTALv+hzgWqCcIoRl
	Y7p3LQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kqhre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:53:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269af520712so54211795ad.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760126033; x=1760730833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YFTq9SfFdhLMTERxwfmxv1dKsZDfHpEAvo+MIED1COs=;
        b=I331aaUyJZSQMJ/KVLBoYpRiN08TrEAko/Tv93fA8pQePPOTh1L9VkSXp0Nd7n9fY7
         TOavp5vGAKrkBG51YYggU4A0mWIBtYKi/qsJQvAZ28lXddF7xvSX8JwGflBztkshnXb5
         fLA2nIvsenXivcEhUUWLHFdmpvu3XnEvuPDUo/w/vfun3sUHYMrjREZS0bbZTcekhXZ9
         h/0yuYpJzWjcj2pS/3BsAqudma1sCTWlQeo5HJwnTDsFChKJCAdxuliTWP2PO8qTP9qr
         60iMwTUiUIY1IUMc5bbS30lD2GN+yDolzgv+y06yBs1wgOnS9W0fQ+PBplOwZB6LMJQc
         TL2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgCo2ZeqTkG4vLmJdr9fl6l5/ItpVdlJgf1H1YCE99mbKC97RY54T+Wfp2mTbEAS48hBv5/l/vV24Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh+tqny/5x4kvF8GZb/Dn8XDShLEt8YREdNrLMKrgD3l9qCh1F
	tMGiAo/vKU8Fwp9BKwISlr/YDS3XneciyVSLkXCAAmU4xXt6myQQ/ykoqVTwjWyIEtJzS85YPB9
	K/wchCQz/i+kTlaMRZzpwztSuoMHxEbT9OOGfTrsdwXxtmMMJUzGIg1ZEGVRD+KPr
X-Gm-Gg: ASbGncvL1zbGDifYI9bhUsg8Mq8ZwnONsGIFDomNPMMzQPgJx6AnhpZ8BlgHg8dO3xi
	rLYrzMLPO6Sh6XzAIFH2UQ0RpbzohGkSK3mbMYUNYsSn3UZaui3Tj9ObANIjjalXqr5Mk7raIrV
	x3EazN8mfietBZiITqYt+/ZEL3QZ1s354aTZzCujDMLjLA3utA5InoAxAT5y7QdMfW/gmj8IGqb
	SkBg6TU0ogh/IAtcdoWJ/eQd27T0i8bMHfdu99F/RB9XU4PXEhKi/1OiVTT5qNSVfudSNg+DkRh
	tDFtLXB0QJosvUSwZ4wApbXlXPWF0l/FQKe9vOjV/EWMCimEetKgBegO8B8VzbFUyBijJXw=
X-Received: by 2002:a17:902:f650:b0:276:305b:14a7 with SMTP id d9443c01a7336-290273ef0ebmr165720245ad.33.1760126032656;
        Fri, 10 Oct 2025 12:53:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7+3w3vBsY6LYeccU+mN4KwyNGzOtDggHxqGdw7Hj3TVrWLuesSk97dfDRKHO97M+QBWfHTA==
X-Received: by 2002:a17:902:f650:b0:276:305b:14a7 with SMTP id d9443c01a7336-290273ef0ebmr165719765ad.33.1760126031947;
        Fri, 10 Oct 2025 12:53:51 -0700 (PDT)
Received: from [192.168.1.3] ([122.181.197.191])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f4ae6csm64827695ad.108.2025.10.10.12.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 12:53:51 -0700 (PDT)
Message-ID: <c863f6a7-b117-4444-ae6d-1d525b572be2@oss.qualcomm.com>
Date: Sat, 11 Oct 2025 01:23:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] Introduce iommu-map-masked for platform devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc: joro@8bytes.org, will@kernel.org, saravanak@google.com,
        conor+dt@kernel.org, robh@kernel.org, mchehab@kernel.org,
        bod@kernel.org, krzk+dt@kernel.org, abhinav.kumar@linux.dev,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev
References: <20250928171718.436440-1-charan.kalla@oss.qualcomm.com>
 <aec0f40a-8346-4194-8b18-1022fe3366bb@arm.com>
 <0d0560cc-9757-4c7b-8de4-170148d99481@oss.qualcomm.com>
 <ead7cf8b-fbc4-4242-a9da-b313dded1abc@arm.com>
 <nzqte4glwtpjs5bhkxz43yhdufelxvqvzmg5tepudxwetimir3@bvlw5csjizsh>
 <9d3eeb9f-b8ea-48e5-a1d9-0865f63ef991@arm.com>
 <fhb4woejzh3r6v5dxvdiopnsbuwstucfuuzbiymxg4wrxrjc7t@dt3z3utq6lwd>
Content-Language: en-US
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
In-Reply-To: <fhb4woejzh3r6v5dxvdiopnsbuwstucfuuzbiymxg4wrxrjc7t@dt3z3utq6lwd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e96451 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=2UNsNDcC2suIOuNS33efzA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=sTZWew2cqMYcmsX6pukA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: QL1GVltXAe-YS8Z--_FHz4leWYd5LZwq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX+4qSAlePESa7
 3ckHvFUiVjVGZk0Zr00hwOV6e+MM+ZO7hwZcodjhFBblSEoh3DS/FmLJDLh8YXbFlinFbvAT2s/
 vlbzQFoiYZtASaa1m3biN+xLa+yMe6cnJeGXaqYZaqHzMXrwohRK3BWAUncIeUKNaepVBypbX+J
 JMlSvkszUvNWv6tUi0JWn6q+1DqOrxzKzqvONDZQZrUeoo34l+R5qc9FczhGNQD//m5mVfZHlvX
 ZxFLNFX57zZPJa7npvJ5aYwawl/g3JE9cFuwiL4/sJdyFJl10NwKf07fyGpf9o77w+ir1opBksj
 ZJG0KqaMFJ5EKS+2J3uBaxfx55qixRLFAcoesfcl0K3N1R6DYyksUEnQM8x51/2kXEjjAPFdMzW
 95rapmKhdSOP7XsuUgBuXhNwsebrFw==
X-Proofpoint-ORIG-GUID: QL1GVltXAe-YS8Z--_FHz4leWYd5LZwq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121



On 10/9/2025 11:55 PM, Dmitry Baryshkov wrote:
>>> I really don't like the idea of extending the #iommu-cells. The ARM SMMU
>>> has only one cell, which is correct even for our platforms. The fact
>>> that we need to identify different IOMMU SIDs (and handle them in a
>>> differnt ways) is internal to the video device (and several other
>>> devices). There is nothing to be handled on the ARM SMMU side.
>> Huh? So if you prefer not to change anything, are you suggesting this series
>> doesn't need to exist at all? Now I'm thoroughly confused...
> Hmm. We need changes, but I don't feel like adding the FUNCTION_ID to
> #iommu-cells is the best idea.
> 
>> If you want to use SMR masks, then you absolutely need #iommu-cells = 2,
>> because that is the SMMU binding for using SMR masks. It would definitely
> I'm sorry. Yes, we have #iommu-cells = <2>.
> 
>> not be OK to have some magic property trying to smuggle
>> IOMMU-driver-specific data contrary to what the IOMMU node itself says. As
>> for iommu-map, I don't see what would be objectionable about improving the
>> parsing to respect a real #iommu-cells value rather than hard-coding an
>> assumption. Yes, we'd probably need to forbid entries with length > 1
>> targeting IOMMUs with #iommu-cells > 1, since the notion of a linear
> This will break e.g. PCIe on Qualcomm platforms:
> 
>                         iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
>                                     <0x100 &apps_smmu 0x1401 0x1>;
> 
> 
> But this seems unlogical anyway wrt. apps_smmu having #iommu-cells =
> <2>. It depends on ARM SMMU ignoring the second cell when it's not
> present.
> 
>> relationship between the input ID and the output specifier falls apart when
>> the specifier is complex, but that seems simple enough to implement and
>> document (even if it's too fiddly to describe in the schema itself), and
>> still certainly no worse than having another property that *is* just
>> iommu-map with implicit length = 1.
>>
>> And if you want individual StreamIDs for logical functions to be attachable
>> to distinct contexts then those functions absolutely must be visible to the
>> IOMMU layer and the SMMU driver as independent devices with their own unique
>> properties, which means either they come that way from the DT as of_platform
>> devices in the first place, or you implement a full bus_type abstraction

I don't want to dilute what Dmitry is saying here, but the below is what
i can make out of Robin comments, please CMIW:

iommu {
	#iommu-cells = <2>;
}

video {
   iommu = <iommu sid1 mask1>, <iommu sid2 mask2>;
   #iommu-map-cells = 2; /* does it look weird to define here, even if
it is SMMU property? */
   iommu-map = <0 smmu sid3 mask3>,
	       <0 smmu sid4 mask4>;
};

video driver calls of_dma_configure_id(, id) for each of the logical
functionality, id is the index(which can be treated as SMMU identifier
for logical function). Multiple smmu identifiers for a logical function
can be represented as bitmap indices in 'id'...

The sample code below, based on #iommu-map-cells defined in video{}
node,  on top of this RFC patch.
-------------------------------8888-------------------------------------
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 2363de8f2fd6..ed5568278e2a 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -41,27 +41,24 @@ static int of_iommu_xlate(struct device *dev,
 	return ret;
 }

-static int of_iommu_map_id(const __be32 *map, u32 id,
+static int of_iommu_map_id(const __be32 *map, u32 idx, u32 id, u32
cell_count,
 				struct device *dev, void *data)
 {
 	struct device_node *phandle_node;
 	struct of_phandle_args *iommu_spec = data;
-	u32 id_base = be32_to_cpup(map + 0);
 	u32 phandle = be32_to_cpup(map + 1);
-	u32 master_id0 = be32_to_cpup(map + 2);
-	u32 master_id1 = be32_to_cpup(map + 3);
-	int err;
+	int err, i;

 	phandle_node = of_find_node_by_phandle(phandle);
 	if (!phandle_node)
 		return -ENODEV;

-	if (id != id_base)
+	if (!test_bit(idx, (unsigned long*)&id))
 		return -EAGAIN;

 	iommu_spec->np = phandle_node;
-	iommu_spec->args[0] = master_id0;
-	iommu_spec->args[1] = master_id1;
+	for (i = 0; i <= cell_count; ++i)
+		iommu_spec->args[i] = be32_to_cpup(map + 2 + i);

 	err = of_iommu_xlate(dev, iommu_spec);
 	of_node_put(iommu_spec->np);
@@ -76,7 +73,7 @@ static int of_iommu_configure_map_id_and_mask(struct
device_node *master_np,
 	struct of_phandle_args iommu_spec = { .args_count = 2 };

 	return of_map_id_and_mask(master_np, *id,
-		 "iommu-map-masked", NULL,
+		 "iommu-map", "iommu-map-mask",
 		 &iommu_spec.np, NULL,
 		 dev, (void *)&iommu_spec, of_iommu_map_id);
 }
@@ -86,10 +83,14 @@ static int of_iommu_configure_dev_id(struct
device_node *master_np,
 				     const u32 *id)
 {
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	u32 cell_count;
 	int err;
-	bool iommu_map_masked = !!of_find_property(master_np,
"iommu-map-masked", NULL);

-	if (iommu_map_masked)
+	err = of_property_read_u32(master_np, "iommu-map-cells", &cell_count);
+	if (err)
+		return err;
+
+	if (cell_count > 1)
 		return of_iommu_configure_map_id_and_mask(master_np, dev, id);

 	err = of_map_id(master_np, *id, "iommu-map",
diff --git a/drivers/of/base.c b/drivers/of/base.c
index bb11125e9624..c42d77beed52 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2065,12 +2065,15 @@ int of_map_id_and_mask(const struct device_node
*np, u32 id,
 	       const char *map_name, const char *map_mask_name,
 	       struct device_node **target, u32 *id_out,
 	       struct device *dev, void *data,
-	       int (*fn)(const __be32 *map, u32 id, struct device *dev, void
*data))
+	       int (*fn)(const __be32 *map, u32 idx, u32 id,
+		       u32 cell_count, struct device *dev, void *data))
 {
+	const char *cells_prop_name __free(kfree);
 	u32 map_mask, masked_id;
+	u32 cell_count;
 	int map_len;
-	int ret;
 	const __be32 *map = NULL;
+	int ret, list_count, idx;

 	if (!np || !map_name || (!target && !id_out))
 		return -EINVAL;
@@ -2084,7 +2087,16 @@ int of_map_id_and_mask(const struct device_node
*np, u32 id,
 		return 0;
 	}

-	if (!map_len || map_len % (4 * sizeof(*map))) {
+	cells_prop_name = kasprintf(GFP_KERNEL, "#%s-cells", map_name);
+	ret = of_property_read_u32(np, cells_prop_name, &cell_count);
+	if (ret == -EINVAL) // property doesn't defined
+		cell_count = 1;
+	else
+		return ret;
+
+	/* syntax: [base iommu cell0 <cell1 ...celln> len] */
+	list_count = 2 + cell_count + 1;
+	if (!map_len || map_len % (list_count  * sizeof(*map))) {
 		pr_err("%pOF: Error: Bad %s length: %d\n", np,
 			map_name, map_len);
 		return -EINVAL;
@@ -2101,12 +2113,12 @@ int of_map_id_and_mask(const struct device_node
*np, u32 id,
 		of_property_read_u32(np, map_mask_name, &map_mask);

 	masked_id = map_mask & id;
-	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
+	for (idx = 0; map_len > 0; map_len -= list_count  * sizeof(*map), map
+= list_count, idx++) {
 		struct device_node *phandle_node;
 		u32 id_base = be32_to_cpup(map + 0);
 		u32 phandle = be32_to_cpup(map + 1);
 		u32 out_base = be32_to_cpup(map + 2);
-		u32 id_len = be32_to_cpup(map + 3);
+		u32 id_len = be32_to_cpup(map + cell_count - 1);

 		if (id_base & ~map_mask) {
 			pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores
id-base (0x%x)\n",
@@ -2115,8 +2127,14 @@ int of_map_id_and_mask(const struct device_node
*np, u32 id,
 			return -EFAULT;
 		}

-		if (fn) {
-			ret = fn(map, id, dev, data);
+		/* for >1 cell count, avoid the linear translation. It is
+		 * expected that custom mapping managed in cb fn().
+		 */
+		if (cell_count > 2) {
+			if (!fn)
+				return -EINVAL;
+			/* list of required indices is mentioned in id */
+			ret = fn(map, idx, id, cell_count, dev, data);
 			if (ret != -EAGAIN)
 				break;
 			continue;
diff --git a/include/linux/of.h b/include/linux/of.h
index 7f3890ab26d5..b7f38a43ffc7 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -464,7 +464,8 @@ int of_map_id_and_mask(const struct device_node *np,
u32 id,
 		const char *map_name, const char *map_mask_name,
 		struct device_node **target, u32 *id_out,
 		struct device *dev, void *data,
-		int (*fn)(const __be32 *map, u32 id, struct device *dev, void *data));
+		int (*fn)(const __be32 *map, u32 id, u32 idx, u32 cell_count,
+			struct device *dev, void *data));

 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);

------------------------------------------------------------------------

Thanks,
Charan

