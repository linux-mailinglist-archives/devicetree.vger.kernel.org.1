Return-Path: <devicetree+bounces-247182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 233A0CC5560
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 11B92300161D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE076329C6E;
	Tue, 16 Dec 2025 22:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a8+RADNq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jNaL7OJU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E963126DF
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765923707; cv=none; b=dfSXtK+pRddtApgWHOZvu5P5bM65Q+NXj59cmRizvnWixbrHLI8zYgD5ikPpU/H47Vyalvu2SmhzotGb1KvphQh60kqJITY8lRTiho4ocveQ7UMJq2/DShHX62pFKbgehe7IkA+8MPTOWiqjO1R3DpEHFN+n0HE4f8ZtlqQ3sdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765923707; c=relaxed/simple;
	bh=G9gLuhn1gYlX16Pldc7mw767XXUhwO5xnSab+bTzS+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ECJd6I3Df0sHbZQ5LF9wEP1wzyt2tGlRPFW25Vd2Cho2jngEEWXsyGIykk8/XdrYjJBYs46vzU0Z+OzW81Fmf9/b1vFG06ncRHL5jzQNO7PXHalFv2vhKJuUBfkMcH5uR0F0+97l+zRW9YnIZvYZef8dAitJ3qWkSrELMvNdBFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a8+RADNq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jNaL7OJU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGFkUI63872291
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:21:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8HiBCIcpdMLJOIL1RNrE8wcn9Ndx6c9xmNAQz1tizXE=; b=a8+RADNquD3dbLe7
	+bqhf0fh2DctX9R54PGcC0xDlKgryDav/GufPQFB2V7bE30tCggJx7MvypzhUxMU
	b/9r1Y7WAGgOPKxjIiOE1XcLn44H9ljW68uJV9beA7U/kHBEyM+Ts8026k8siSHa
	QMtexlhafmgBmWyf5dnjt36xrHB2obJM8eMNP04+Ejy1Q31uky9K/9QGfFtHVvQU
	Fl8GFnybqvANGF1dMjy86q5/n+p3C+tEpr0NcZpk4y/rZOrWG1oXnjM4jXHNZ+Tf
	LKMuaJS044tJvcVW81iCMh4OFEAMAsSWRhq7trDeA2OA4R04TSWHFsdTnYJ0KhWO
	UhY3cQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b369wa6u8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:21:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so5353897a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765923703; x=1766528503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8HiBCIcpdMLJOIL1RNrE8wcn9Ndx6c9xmNAQz1tizXE=;
        b=jNaL7OJUfGYNkMjlR9sPp7pNKlAlW3hi2x3Ca/WiatS7uzmCzqwfAD7b6jg+fo/xrJ
         0nIJmmSJZPx2cR1y1k7Wq6+dLt3MU24FMKuCbosQFU3xeS5KP3xrYjLdzkJ9WN3xV4AS
         iZxCfwqLwthZcrT8AzUl6zfYEm4/74jRF4HFuny2d5UaaRwt+0OuFKNU5tMC5ug82njO
         DDQGebiphGc+sxpaJ6XbE0WofWcCWyitftc/yBWQib7knmRRaG3vlmZyB0ta2ObhL/bU
         hLcfpAWYF7zxYh4fqlH2Z7zEGACLF6lf0MW2x8d6P7yb2K5oCb7K/LU201zxk3lpLsuM
         3rTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765923703; x=1766528503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8HiBCIcpdMLJOIL1RNrE8wcn9Ndx6c9xmNAQz1tizXE=;
        b=J8ynFLtLetq096as2dlozJHmcoM8+uYUoGYWXSwdrXe+JburQs/YQrtaFAOVOxJJDc
         SnscXOuI9i1SNyiu2lVaFs0NGXDu11Tu9gmo4kRjQFbIGLm29iqGNJP2BVo1Cy1eWhXb
         w5Y8Lq2pisCg9+eUFofVkDEF0tEeU2PPXCp6qclY/svXoyrGDoARPSL6Fd6jMtf8IyIU
         NW66TP4RYAZY7QrkIgPeva8vcX/f1qfFQ8v7H8DDQiDAcLmuQ+gOSxbGJZI6PMLNTWop
         R0F+iBRa41uHZGlL5cQEJIWTr8NEvIDmZ9h1/01YWKUU3reEH2ORCzgBIO5t2ykHPN71
         YYGA==
X-Forwarded-Encrypted: i=1; AJvYcCVGTm1VA1tFh4ISwISWWyLL1DdU3ehlzYWyBH50UtW9Xo9BFcbq6TxwdcV/wo6tKkX2olx+br05afSJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1Hx1BQ9JXjjRENOPUYLvW+IyMjbZvpEw/QYr04hSjWImOyqVT
	Q2luAfze0b/kvBXdaKg7KwDwUyjqMDgqbsuFE285i3kUjD9USwC+CIkw0o/e4br6w59W8nskFKM
	hWR1FOvqCa5h7fFeS1/6kzmn18QigmLg1SlMMox4T4v4kNuDEBz1TI/NjyEIAXLAM
X-Gm-Gg: AY/fxX6GKepRkdEiy93Rxd94HGyaTAAMZCabwFgCAElAsyUy21PCu6SxuFv/w9EZh1n
	22AXWDu9zlXzn06pnMQNLkm8M9rqHCiJeYTORW243fzdf5Imavo+KSgepeH0iC8sz0ll/IPZPa7
	gFpKbQx9fJcCbex5QLU5afgSZi3PBqHYia4pcM6VQOlOZx/lsIFALq25fD16Z4696u/pQ6cPgXe
	TlEtMzzQYOUhRK5mA67vKbFujbp6mFqv59CHr0DCCAoyodqU7+a9Ea1aAikKxmEC6YUgz4429RU
	Hp2uMTWXGVhbtbQmDrbH9pGvbPYbrl8i5AbZYNOJi+cKDq3rX/5Fw7AUsQ3Vc7wXTL48Vk0cO66
	TeE7CRycfXxAy1+ixyKnPxMVkiVMm94S98Qc0pT1rqE+Ldw9XfJJDO0jHQ+fHCmUqyU0x6jtceQ
	==
X-Received: by 2002:a05:693c:40d0:b0:2ab:ca55:89ab with SMTP id 5a478bee46e88-2ac3014dce6mr10730975eec.42.1765923702472;
        Tue, 16 Dec 2025 14:21:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFi/A5m1zIJyuP7xZZ92DFDZYKgvLKmrGiV5FjsUQjVbjI+cenqaoY5wg0bM2r+933ZgklO/Q==
X-Received: by 2002:a05:693c:40d0:b0:2ab:ca55:89ab with SMTP id 5a478bee46e88-2ac3014dce6mr10730925eec.42.1765923701875;
        Tue, 16 Dec 2025 14:21:41 -0800 (PST)
Received: from [10.71.110.87] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ae4f054476sm1665750eec.16.2025.12.16.14.21.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 14:21:41 -0800 (PST)
Message-ID: <61102a92-ad98-4fbd-bee8-760a758b0eb6@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 14:21:40 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: reserved_mem: Allow reserved_mem framework detect
 "cma=" kernel param
To: Rob Herring <robh@kernel.org>
Cc: m.szyprowski@samsung.com, ye.li@oss.nxp.com, kernel@oss.qualcomm.com,
        saravanak@google.com, akpm@linux-foundation.org, david@redhat.com,
        lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
        rppt@kernel.org, surenb@google.com, mhocko@suse.com,
        robin.murphy@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        iommu@lists.linux.dev, quic_c_gdjako@quicinc.com
References: <20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com>
 <CAL_JsqL6VVQ7K_ZAbHJ8Gb7ei_jusLx6wRn=AdOVgV50dX0ejQ@mail.gmail.com>
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <CAL_JsqL6VVQ7K_ZAbHJ8Gb7ei_jusLx6wRn=AdOVgV50dX0ejQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LZcI0aXlF3JyhepELd_J4qE3eyh3TZBo
X-Proofpoint-ORIG-GUID: LZcI0aXlF3JyhepELd_J4qE3eyh3TZBo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDE5MCBTYWx0ZWRfXyQHTbWK8jPop
 A9OZsibj/pGeU8OeRlYdjZ9UvWV1aFfHomyb/vZKWQwjpsXPuiEcetKfclklVIO0s0AJ1zSIuqm
 InuYEQWdWPLc6li+/Ekll6bSAuFQfOpnNYGFPbE6UFCrbJzj7hPQT4T/NcrGfGmbaU47omSYuQS
 PVGTRVTb4VIwhjDcugU38SZFVbXmDkD/Un3L5/boulurvn1hKl0f2VAR420pq3TwaYqXACQRrYX
 etY43cFdvp/khIDibreCCYEMv0zFyDjNzDNy3rkvEDju+MUOY/+Z3d02oCD7Nr5YjNOCRsW5Tam
 JpF/MmY9wW/jyBkK8SEDRqbAc122SaKnSCZezP9aK6RkXf3/wCPp+ttqEe/GRGkvu//nRAPmxbn
 DwV8sm6I+YFf9Nrv8Ohucw5Umf41ow==
X-Authority-Analysis: v=2.4 cv=MP5tWcZl c=1 sm=1 tr=0 ts=6941db78 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KYYUgL8zeczeCQrUCMoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160190



Hi Rob,

On 12/10/2025 6:07 AM, Rob Herring wrote:
> On Tue, Dec 9, 2025 at 6:20 PM Oreoluwa Babatunde
> <oreoluwa.babatunde@oss.qualcomm.com> wrote:
>>
>> When initializing the default cma region, the "cma=" kernel parameter
>> takes priority over a DT defined linux,cma-default region. Hence, give
>> the reserved_mem framework the ability to detect this so that the DT
>> defined cma region can skip initialization accordingly.
> 
> Please explain here why this is a new problem. Presumably the
> RESERVEDMEM_OF_DECLARE hook after commit xxxx gets called before the
> early_param hook. And why is it now earlier?

ACK. I will add more of this info in the next patch version.

> 
> I don't really like the state/ordering having to be worried about in 2 places.

The advantage to having the state visible to the reserved_mem code is that
we can skip adding the DT node to the resrved_mem array since it actually
won't be used.

If this is still not preferred, another option would be to use a helper
function  in contiguous.c to call dma_contiguous_early_fixup() for the
reserved_mem code. This way, "size_cmdline" can be checked internally within
the file and it can call dma_contiguous_early_fixup based on that.

> 
>> Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
>> ---
>>  drivers/of/of_reserved_mem.c | 19 +++++++++++++++++--
>>  include/linux/cma.h          |  1 +
>>  kernel/dma/contiguous.c      | 16 ++++++++++------
>>  3 files changed, 28 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
>> index 2e9ea751ed2d..bef68a4916b5 100644
>> --- a/drivers/of/of_reserved_mem.c
>> +++ b/drivers/of/of_reserved_mem.c
>> @@ -158,7 +158,7 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
>>         phys_addr_t base, size;
>>         int len;
>>         const __be32 *prop;
>> -       bool nomap;
>> +       bool nomap, default_cma;
>>
>>         prop = of_get_flat_dt_prop(node, "reg", &len);
>>         if (!prop)
>> @@ -171,6 +171,12 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
>>         }
>>
>>         nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
>> +       default_cma = of_get_flat_dt_prop(node, "linux,cma-default", NULL);
>> +
>> +       if (default_cma && cma_skip_dt_default_reserved_mem()) {
>> +               pr_err("Skipping dt linux,cma-default for \"cma=\" kernel param.\n");
>> +               return -EINVAL;
>> +       }
>>
>>         while (len >= t_len) {
>>                 base = dt_mem_next_cell(dt_root_addr_cells, &prop);
>> @@ -256,12 +262,15 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
>>
>>         fdt_for_each_subnode(child, fdt, node) {
>>                 const char *uname;
>> +               bool default_cma = of_get_flat_dt_prop(child, "linux,cma-default", NULL);
>>
>>                 prop = of_get_flat_dt_prop(child, "reg", &len);
>>                 if (!prop)
>>                         continue;
>>                 if (!of_fdt_device_is_available(fdt, child))
>>                         continue;
>> +               if (default_cma && cma_skip_dt_default_reserved_mem())
>> +                       continue;
>>
>>                 uname = fdt_get_name(fdt, child, NULL);
>>                 if (len && len % t_len != 0) {
>> @@ -406,7 +415,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
>>         phys_addr_t base = 0, align = 0, size;
>>         int len;
>>         const __be32 *prop;
>> -       bool nomap;
>> +       bool nomap, default_cma;
>>         int ret;
>>
>>         prop = of_get_flat_dt_prop(node, "size", &len);
>> @@ -430,6 +439,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
>>         }
>>
>>         nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
>> +       default_cma = of_get_flat_dt_prop(node, "linux,cma-default", NULL);
>> +
>> +       if (default_cma && cma_skip_dt_default_reserved_mem()) {
>> +               pr_err("Skipping dt linux,cma-default for \"cma=\" kernel param.\n");
>> +               return -EINVAL;
>> +       }
>>
>>         /* Need adjust the alignment to satisfy the CMA requirement */
>>         if (IS_ENABLED(CONFIG_CMA)
>> diff --git a/include/linux/cma.h b/include/linux/cma.h
>> index 62d9c1cf6326..3d3047029950 100644
>> --- a/include/linux/cma.h
>> +++ b/include/linux/cma.h
>> @@ -47,6 +47,7 @@ extern int cma_init_reserved_mem(phys_addr_t base, phys_addr_t size,
>>                                         unsigned int order_per_bit,
>>                                         const char *name,
>>                                         struct cma **res_cma);
>> +extern bool cma_skip_dt_default_reserved_mem(void);
>>  extern struct page *cma_alloc(struct cma *cma, unsigned long count, unsigned int align,
>>                               bool no_warn);
>>  extern bool cma_pages_valid(struct cma *cma, const struct page *pages, unsigned long count);
>> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
>> index d9b9dcba6ff7..9071c08650e3 100644
>> --- a/kernel/dma/contiguous.c
>> +++ b/kernel/dma/contiguous.c
>> @@ -90,6 +90,16 @@ static int __init early_cma(char *p)
>>  }
>>  early_param("cma", early_cma);
>>
>> +/*
>> + * cma_skip_dt_default_reserved_mem - This is called from the
>> + * reserved_mem framework to detect if the default cma region is being
>> + * set by the "cma=" kernel parameter.
>> + */
>> +bool __init cma_skip_dt_default_reserved_mem(void)
>> +{
>> +       return size_cmdline != -1;
>> +}
>> +
>>  #ifdef CONFIG_DMA_NUMA_CMA
>>
>>  static struct cma *dma_contiguous_numa_area[MAX_NUMNODES];
>> @@ -463,12 +473,6 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
>>         struct cma *cma;
>>         int err;
>>
>> -       if (size_cmdline != -1 && default_cma) {
>> -               pr_info("Reserved memory: bypass %s node, using cmdline CMA params instead\n",
>> -                       rmem->name);
>> -               return -EBUSY;
>> -       }
>> -
>>         if (!of_get_flat_dt_prop(node, "reusable", NULL) ||
>>             of_get_flat_dt_prop(node, "no-map", NULL))
>>                 return -EINVAL;
>> --
>> 2.34.1
>>
>>

Regards,
Oreoluwa

