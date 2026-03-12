Return-Path: <devicetree+bounces-274544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L1zCKCmsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:42:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B50FB27129C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 51D6D303205D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478043B9DB0;
	Thu, 12 Mar 2026 11:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cTWDR23r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ryzj9rwH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBD13AE6ED
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315723; cv=none; b=XJrq0uLQFZkhduyJLn8+XavmMey5H4LrCyKvfrasOE9I7Q39V9V+1096k4MqDbzMxgCRP2Ra4c6R2smBPVBEuiZUm/2YqB0ZbBuCyQuI7unaQl/QiJZfyornM15TfzOveKw1yqAGcvfQUt/rnuybyH5R2ktcPCOoN8ARHxjXAhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315723; c=relaxed/simple;
	bh=nwaZTsNWKtiAy3M+myiu//8Q2UY2tqa7VUs/W+GtYLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DhoHT9w6eLIOm3H6nOO3hFoLWjeRM9xQKm+5vISyAs6Nxy201dVJV+D0wszM2ZHWaS6hF6iqa0Ll8O22KDxOceh0LiBsFV3hjHb5EZNyq7dM9xGT/3TClZzHie6WRlyFEPPOUg8PyLLHlTqL7X8W4asYMFoWQ50vYL8JCxpKPL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cTWDR23r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ryzj9rwH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CAe0G8263527
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O6HJTG517rx7BZNC+Lqbxk38jHNOTKDXfitY+fGl2Qg=; b=cTWDR23rSNC6RXYv
	NYm5xAfJP6JIuBegbdJxesqHYjbPVMpbyoaplrYspybiURpA1Trs2IBBicGX/68c
	/5p+bLJWsmwM5nkoINvohPNjkwnCV2Td1WLJKuiQev/oeNlwdMwm/GB45fgFyHxJ
	HBiAKD73NnOBoytDQFweyjSwkRPfJWCUyj7pEosaMeJDL4V+7DNFEgrEfn/EASZJ
	6+Gx97SZIgZENJcFW2XKZ7T0QIf+zW3nzwfP8DgMViWz3ZckUTqhX36WvwMOPypt
	LWOJsODEoFAaVja57lITwPwa+tEi6nJkKgY1F91wyXAO/nJARSgaUFBOp4o2h3W9
	cdmcuA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4yhwv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:42:00 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae57228f64so10247995ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773315720; x=1773920520; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O6HJTG517rx7BZNC+Lqbxk38jHNOTKDXfitY+fGl2Qg=;
        b=Ryzj9rwHx4/L9W/95j18RQLyN36VmXh7hrBX885U/DVRYKg0KS2q5yHnfGUrJn9Y/m
         25qed/Xs5eXNZgFtV807uvntAaJeEh7eOJNyDn782Fq+UmKAbX54+ZRzwOy9XpbwIWe+
         CKwY6712Y626UQUtjjX4BXYdqRWX1LJCWl7YwcBglN1gyM2HDIIWFlIIwgEnxfzA1Snv
         Tfb6WUfKsiqmADqiEDDF6Q74SbX9EMyABBwcxNzIJjaDMCs1QWCungJZvNIdtiCZ0KIa
         bpYr9QoQ9obNvyXVvaDxjG7Cn27m2UYUo36FXp3FVxiuhqQam3e/vZypo9FgENHuTWbX
         efWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773315720; x=1773920520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6HJTG517rx7BZNC+Lqbxk38jHNOTKDXfitY+fGl2Qg=;
        b=efDxP7dYa5yRoRxxI0BKHhtNTlQxIGVT7MjjzJCM2lbRhiJA12pP2wsphAvCxpawnj
         WIyrTMGrhr0D8PZ315iP4UaZzhO+0ajKVKvFnBVAUWS7AL9vntFTSwmXbdE8sp0oHSPY
         dD91l0qNYG1EHNLMN1Zln1VHVcqxjVVt9msiQjxAk2MhHMOu+TiOlzFXIYz7OuXwNtde
         voQe82K3TAWbvjMv0eXd+DjxfbLeQhJUQVqzdkJEBQAsUaEEkWC7Wh5bSPvEAF0sotNm
         holgzYbNqXPtsiRSuTzjfbyHoj7kiOGVUCPeS7i+DCTYTd+swr5ZcfVH6J+C80zwRVwb
         i6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtYD9LCTeR7zAtLxUY0S3v+lZvD8JvGFBfCX8XNMeCHIBlzJMGc1FeROaR8c28wZQlP2YmtcyrUc0G@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp/F8fxsmFoaK/fE8hpnUotrEIRxV+ZsXG5oXr3DvWAGW4+4WR
	c8RVxUYTsLNkJhUxtLA0M9QENwD+cnPlS3ShCIfqA7rzMGmEoaLdGU36ZOfR/JZFTO9mgcswuf2
	iw0gZWKzdgIjpj9tqJj/ZPvL+Xgl7iaFqDhq3xm0kXGVebXo4Bxa+dUcCo3K6nJx4
X-Gm-Gg: ATEYQzxH38cOfJ68VlY2CX0TPy2OwQicTrRyOJGti9NF7O0RIWV5I+Yn0HZBmSO7vhR
	WvTk/qs2kkPefOs50ZV79jF1uAHH85hGEGROZo/pBMi0t/Xcep3mcHuynIlJ5dux8X+9SOTpPKL
	aiBJVB2EScN8N73m45ZFNF+ufLborTnsAFs3fnLhDFMc7pj62INmp4zLbrJG/1R6hVTzpxhAX2r
	RkLkxgIgMCM2nYAltkSPjJNfrqHhAGen4IG9AYdXB6+UltQuAbeg9Gut0IVWv1edPezOcJIy7Os
	UbrTBorXxtfj3Yi6q8KM6SY1V0WgDh/1gjcnx0gZVAm57zbFzB6p6gpCeovk7u88bONHFrJA0NY
	ChY0uUeU4gDL90ugyUNOe+OX4hUZeZJEzCmiLVPH4mAgF4JeBtXwPsmBrQg==
X-Received: by 2002:a17:902:e807:b0:2ae:478f:2ec with SMTP id d9443c01a7336-2aeae89119emr62683505ad.29.1773315719577;
        Thu, 12 Mar 2026 04:41:59 -0700 (PDT)
X-Received: by 2002:a17:902:e807:b0:2ae:478f:2ec with SMTP id d9443c01a7336-2aeae89119emr62683115ad.29.1773315719067;
        Thu, 12 Mar 2026 04:41:59 -0700 (PDT)
Received: from [192.168.1.10] ([38.254.186.229])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae22217dsm53886225ad.4.2026.03.12.04.41.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 04:41:58 -0700 (PDT)
Message-ID: <57537059-4989-4704-ae6a-72576d031216@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:10:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/3] of: Add convenience wrappers for of_map_id()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal
 <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org
References: <20260309-parse_iommu_cells-v10-0-c62fcaa5a1d8@oss.qualcomm.com>
 <20260309-parse_iommu_cells-v10-1-c62fcaa5a1d8@oss.qualcomm.com>
 <3plcdobbd6teiluzijzk33yepbpsur24tnmjr32sco7a4loptm@xmzmsaurvmvj>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <3plcdobbd6teiluzijzk33yepbpsur24tnmjr32sco7a4loptm@xmzmsaurvmvj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA5MiBTYWx0ZWRfX9Q2Lev9IF8QS
 LoAfhKF4cof0ck6J92SnGc0kX01QnZQ0h1YAtLYOaV76asgJtE1UG3pNBKDF7i0ZbFnTfsyYE+l
 YqF69WLDORKl84S29i2MorNdlupZtGoFdxElmpVSkGywewG+b3QvuUvSimS9NIeIwzaWD2o/WHd
 JuVwQ1uvhhg6B9hA+digX/m46OPK4HVfaMugVSrnWp+BoW2tIb8iKX/KCRKe3Fx9suFt/kh3x+9
 eaKb81LsTGn2C9coQh6kryp1AnGR3yfSqalaDeoFvoiT3c4IGGTMxWm9nN/sZ1gBEVdfGLzacYk
 W67gR6X4h7QxptG2TuDhWMl9bKcfxDAz6Fiz7/XrFZx1y9XPytH1PyZaqtgawjz9tO9WOi25J5B
 JAQkIrna5dgYQUriJ+objo4faGcp3eP+cllhbctOxz4V60p0IkLofFbnr2ocTOgMItH8S1siVqr
 1GtjO6Mdmi8kncKVeUA==
X-Proofpoint-ORIG-GUID: sNwltXC0TGL8McTcJ5JOeca6BrlCw5Zl
X-Authority-Analysis: v=2.4 cv=C+7kCAP+ c=1 sm=1 tr=0 ts=69b2a688 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=FuYIH7Xx0xzBSkYrynBYgw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8
 a=6wy38kV5EeFARYyu09AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: sNwltXC0TGL8McTcJ5JOeca6BrlCw5Zl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120092
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	TAGGED_FROM(0.00)[bounces-274544-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B50FB27129C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/10/2026 2:46 AM, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 01:03:37AM +0530, Vijayanand Jitta wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Since we now have quite a few users parsing "iommu-map" and "msi-map"
>> properties, give them some wrappers to conveniently encapsulate the
>> appropriate sets of property names. This will also make it easier to
>> then change of_map_id() to correctly account for specifier cells.
>>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Reviewed-by: Frank Li <Frank.Li@nxp.com>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>> ---
>>  drivers/cdx/cdx_msi.c                    |  3 +--
>>  drivers/iommu/of_iommu.c                 |  4 +---
>>  drivers/irqchip/irq-gic-its-msi-parent.c |  2 +-
>>  drivers/of/base.c                        | 36 ++++++++++++++++++++++++++++++++
>>  drivers/of/irq.c                         |  3 +--
>>  drivers/pci/controller/dwc/pci-imx6.c    |  6 ++----
>>  drivers/pci/controller/pcie-apple.c      |  3 +--
>>  drivers/xen/grant-dma-ops.c              |  3 +--
>>  include/linux/of.h                       | 18 ++++++++++++++++
>>  9 files changed, 62 insertions(+), 16 deletions(-)
>>
>> +
>> +/**
>> + * of_map_msi_id - Translate an ID using "msi-map" bindings.
> 
> Which ID are we talking about wrt. MSI interrupts?
> 

id refers to the device’s requester ID (RID/BDF or platform stream ID),
not an MSI interrupt number; it is the key used in msi-map to obtain
the translated MSI device ID (id_out).

I'll update the kernel doc as below to clarify.


* @id: Requester ID of the device (e.g. PCI RID/BDF or a platform
*      stream/device ID) used as the lookup key in the msi-map table.

Thanks,
Vijay

>> + * @np: root complex device node.
>> + * @id: device ID to map.
>> + * @target: optional pointer to a target device node.
>> + * @id_out: optional pointer to receive the translated ID.
>> + *
>> + * Convenience wrapper around of_map_id() using "msi-map" and "msi-map-mask".
>> + *
>> + * Return: 0 on success or a standard error code on failure.
>> + */
>> +int of_map_msi_id(const struct device_node *np, u32 id,
>> +		  struct device_node **target, u32 *id_out)
>> +{
>> +	return of_map_id(np, id, "msi-map", "msi-map-mask", target, id_out);
>> +}
>> +EXPORT_SYMBOL_GPL(of_map_msi_id);
> 


