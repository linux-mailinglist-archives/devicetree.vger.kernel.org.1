Return-Path: <devicetree+bounces-226432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CEBD8A0D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E2743A20CF
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FCF2EBB87;
	Tue, 14 Oct 2025 10:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="PFcKDB1f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7AF2EB87D
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436001; cv=none; b=LeRB3TvMQlsl53ACUZF8cncu+H4+Prl05L7OKk+mnBPzhol6sADhj5ixByqB2w/HOao4Nxebs9VN/38RbQva+n4/i9pWsldU/JaiJJdjFFiRVn+uOv2bGp4PAvlXTv19n5MX2uXCKLlIgOkqsVFtFYaoruoQi5gO/tEdOLNb5o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436001; c=relaxed/simple;
	bh=fdUm5XTIjPzkqxmKKjhEbQjwx4f2nBT1Nqh162xIXqY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqMsT98J1cNKTL6rxU3LyCu8u+P2M70bjxreJQnvdRwh7dSWPb2GAJalThDjMcGlgIok/F+6pa8t54P+GyJNgFpwzrTdrwC12A59oyxnfe4zzYkYRG5mXIVik6L+WAf36PNqElwBodEi7ZJrAfN0sGQPbVxo+hYV++CaKW7sAtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=PFcKDB1f; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-62fc89cd68bso6145491a12.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1760435997; x=1761040797; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I5Eia1uXG7qB/QbJ0GEaHySD/nNm7A3kv0KkMWdGEbc=;
        b=PFcKDB1fbNhMG47V36oueHMFtUywbELuyfVu1iaraifsVNJxKu0lR428ydFjeKRC9r
         ky8mRARHzOHX1jhwjzh9/DpmZeqchc0PqGaSXR1bow+JtZ19isRgPR2OkP5hAu8jkjth
         aDwROby+Aav7/B8FW/I2pDSkv2KWGnbikByZKXJwrFLkmygOwGeGD+uRGhdedkGvHDyK
         KWW5XgpsWLBuBAOdM8/uBPZuQjfvxpKM6GWGp0SoK+oVBQniWC4dbnFe26Iw++FHi845
         mqLwkPYHgB4/JbiEZQ1yXp87zG7G7qo2rAyQPs/Umqc4EpQsVaBLK/xdgyVrJNgm1nLo
         aPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435997; x=1761040797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I5Eia1uXG7qB/QbJ0GEaHySD/nNm7A3kv0KkMWdGEbc=;
        b=bhPV6nIJFSRJoKulcGkN3NjRhBPxJ4Urh3byt2cNYYZ/wWcHycK4cI+Gv8EdEHqwoA
         DgcH0wEDpWvIvRSaPBWomf8iXfVAl56rK9YfCiFSueb3Oo+05r5bvko0b+8Mf3BYFhi+
         2O3JEPQvUvaV18lysNtPivDVAPCMnmdDHkRuzTUC8uIRoFOXM9VdAdhzReQIIX9t9wYf
         nAG5UFDCe1Bpl3cjjQxZMRUi9n1nKfOaQR7xQjvm0RKfxfD+EG/1K6OT83V/kgPfZqkh
         70raJrf3Km+m1sN0XjUDQbOzcCHIPgo4hDGQLxbO9Rrb87V9AbJQiyRqrRWpgDTICcWo
         dAkg==
X-Forwarded-Encrypted: i=1; AJvYcCXyUgvIw6cDzbNok1pQHV6Mr8cvmQjiVOrpgYI/qF1uT1tfQCYN6lol0419htYGeyyG3tLCjoGTgEsx@vger.kernel.org
X-Gm-Message-State: AOJu0YxjoNgxsdRitvtJ33+gbof7srjOuN/kqhGjvkkDH7k1GxXPY4vc
	W1Rcy6E42bi1IBoQqpuDbYISGbDYT2eakHfXocBG/v6Kl1zsmjeM4yFWCUG/vUHxwAQ=
X-Gm-Gg: ASbGncvBgrcO6fBjSmMMCfGrjSqM36VJuYQmyUla9f8km+2CHDQ8cI2VQEn2b3Z9ftB
	+PlCGCrjj18z4prWGzT+fhUav8fiJTY/OpX9Hltwgz+So/YH3xi26sI+x4JPcjRjIZGve3v4hxI
	Y3d3QMOfmQAdnpmRqTFOo6Tnmv5LK7j1Gd2tohMGheENT64xjVYIXCmB5C4UV4aoQJFG0ZQ73qX
	xZ2uWTDIdNyOTGcIsZe/TMcfoj0/lDI5VtZ8HAZxHW8anr1YyouY+YmLIWawysVL/YP7X5cymgf
	VGuE0W7By0ObJTXiAB+rTBobXVYatpDklsJbF5aabPURnRj3WYiUbtJbvQa2OGeZt5VcjoWB7D5
	irdI0lBpfIfh1s9HrXxE7aqrM3IqLSJCAmSBJsmNUa8XDm/FS6SUtxW9DKNtWZnhKt3UomXMfLO
	OpzVemg1DDiQPBjNcWDYUSiA==
X-Google-Smtp-Source: AGHT+IEWum7AMpFjUIJTFkvcRTOMl+sJqeexjwFcy+3nFXj72+XdrdPINFsTFSvXqF8hPvu7agUAQA==
X-Received: by 2002:a17:907:6d19:b0:b45:60ad:daff with SMTP id a640c23a62f3a-b50aa99e0f1mr2514491566b.28.1760435995146;
        Tue, 14 Oct 2025 02:59:55 -0700 (PDT)
Received: from localhost (host-95-247-55-253.retail.telecomitalia.it. [95.247.55.253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12b4csm1146894066b.56.2025.10.14.02.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:59:54 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 14 Oct 2025 12:02:03 +0200
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH] of: reserved_mem: Add heuristic to validate reserved
 memory regions
Message-ID: <aO4fm7OjHjh_vVgN@apocalypse>
References: <20251014073403.32134-1-andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014073403.32134-1-andrea.porta@suse.com>

Hi, 

On 09:34 Tue 14 Oct     , Andrea della Porta wrote:
> When parsing static reserved-memory DT nodes, any node with a reg property
> length that is not perfectly conformant is discarded.
> Specifically, any reg property whose length is not a multiple of the parent's
> (#address-cells + #size-cells) is dropped.
> 
> Relax this condition (while still treating perfect multiples as having higher
> precedence) by allowing regions that are subsets of the parent's addressable
> space to be considered for inclusion.
> For example, in the following scenario:
> 
> / {
>         #address-cells = <0x02>;
>         #size-cells = <0x02>;
> 	...
> 
>         reserved-memory {
>                 #address-cells = <0x02>;
>                 #size-cells = <0x02>;
> 		...
> 
>                 nvram {
>                         reg = <0x00 0x3fd16d00 0x37>;
> 			...
> 		};
> 	};
> };
> 
> Even though the reg property of the nvram node is not well-formed from a DT
> syntax perspective, it still references a perfectly valid memory region of
> 0x37 bytes that should be reserved.
> 
> This has at least one real-world equivalent on the Raspberry Pi 5, for example,
> on which the firmware incorrectly overwrites the nvram node's reg property
> without taking into account the actual value of the parent's #size-cells.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---
> 
> The aforementioned heuristic has been tested with several combo of #address,
> #size and reg length and the results are shown in the following table:
> 
> Testing #address-cells 1, #size-cells 1
> 
> len     |t_len  |addr   |size   |#ignore
> 0       |8      | INVALID
> 4       |8      | INVALID
> 8       |8      |1      |1      |0
> 12      |8      | INVALID
> 16      |8      |1      |1      |1
> 20      |8      | INVALID
> 24      |8      |1      |1      |2
> 28      |8      | INVALID
> 32      |8      |1      |1      |3
> 36      |8      | INVALID
> 40      |8      |1      |1      |4
> 44      |8      | INVALID
> 48      |8      |1      |1      |5
> 52      |8      | INVALID
> 56      |8      |1      |1      |6
> 60      |8      | INVALID
> 64      |8      |1      |1      |7
> 68      |8      | INVALID
> 72      |8      |1      |1      |8
> 76      |8      | INVALID
> 80      |8      |1      |1      |9
> 84      |8      | INVALID
> 88      |8      |1      |1      |10
> 92      |8      | INVALID
> 96      |8      |1      |1      |11
> 
> 
> Testing #address-cells 2, #size-cells 1
> 
> len     |t_len  |addr   |size   |#ignore
> 0       |12     | INVALID
> 4       |12     | INVALID
> 8       |12     | INVALID
> 12      |12     |2      |1      |0
> 16      |12     | INVALID
> 20      |12     | INVALID
> 24      |12     |2      |1      |1
> 28      |12     | INVALID
> 32      |12     | INVALID
> 36      |12     |2      |1      |2
> 40      |12     | INVALID
> 44      |12     | INVALID
> 48      |12     |2      |1      |3
> 52      |12     | INVALID
> 56      |12     | INVALID
> 60      |12     |2      |1      |4
> 64      |12     | INVALID
> 68      |12     | INVALID
> 72      |12     |2      |1      |5
> 76      |12     | INVALID
> 80      |12     | INVALID
> 84      |12     |2      |1      |6
> 88      |12     | INVALID
> 92      |12     | INVALID
> 96      |12     |2      |1      |7
> 
> 
> Testing #address-cells 2, #size-cells 2
> 
> len     |t_len  |addr   |size   |#ignore
> 0       |16     | INVALID
> 4       |16     | INVALID
> 8       |16     | INVALID
> 12      |16     |2      |1      |0
> 16      |16     |2      |2      |0
> 20      |16     | INVALID
> 24      |16     |2      |1      |1
> 28      |16     | INVALID
> 32      |16     |2      |2      |1
> 36      |16     |2      |1      |2
> 40      |16     | INVALID
> 44      |16     | INVALID
> 48      |16     |2      |2      |2
> 52      |16     | INVALID
> 56      |16     | INVALID
> 60      |16     |2      |1      |4
> 64      |16     |2      |2      |3
> 68      |16     | INVALID
> 72      |16     |2      |1      |5
> 76      |16     | INVALID
> 80      |16     |2      |2      |4
> 84      |16     |2      |1      |6
> 88      |16     | INVALID
> 92      |16     | INVALID
> 96      |16     |2      |2      |5
> 

I've just realized that maybe describing the testing matrix above in
some more details could be beneficial, se here we are:

len: INPUT (bytes) - the total length of the reg property array in the
node (child of reserved-memory node) describing the reserved region.
This can be a single element array in case of only one reg entry, or
multiples ones.

t_len: INPUT (bytes) - the length of one entry row in the reg array as
expected by the root node, which is equal to (#address-cells + #size-cells)*4.

addr: IN/OUT (# of cells): a.k.a calc_addr in the code, the input is equal to
the root node's #address-cells. The output is equal to the number of address
cells to be parsed from the reg property array of length 'len'.

size: IN/OUT (# of cells): a.k.a. calc_size in the code, the input is equal to
the root node's #size-cellsi. The output is equal to the number of size cells to
be parsed from the reg property array of length 'len'.

#ignore: the number of reg property array entries that will be discarded, this
refers to the actual code in fdt_scan_reserved_mem_reg_nodes() which discard
any entry among the first, and it has been described in this matrix just to be
sure there is no regression in calculating that too.

Hope this helps to make that table a little clearer.

Many thanks,
Andrea

>  drivers/of/of_reserved_mem.c | 88 ++++++++++++++++++++++++++++++++----
>  1 file changed, 78 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 2e9ea751ed2d..f94069ef988e 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -130,6 +130,68 @@ static void __init fdt_reserved_mem_save_node(unsigned long node, const char *un
>  	return;
>  }
>  
> +/**
> + * reg_len_valid() - scan for a suitable #size-cells value and validate
> + *		     the reg property length
> + * @len:	Length of the reg property to be validated (bytes). Can be composed
> + *		by more than one reg addr+size pairs
> + * @calc_addr:	the number of address cells expected by the parent of the node
> + *		containing the reg property. Currently it's just used as in param
> + * @calc_size:	the number of size cells expected by the parent of the node
> + *		containing the reg property (out param)
> + *
> + * This function tries to find the correct #size-cells number for the size portion
> + * of a reg property, assuming the #address-cells passed in (calc_addr param)
> + * is valid to avoid ambiguity.
> + * Parent_len is the length in bytes of a single reg property * as expected by the
> + * parent.
> + * Either len is a multiple of parent_len, in which case there's no adjustment to
> + * be made to calc_size and the region is automatically valid (this choice has the
> + * priority), or it is not a multiple.
> + * In the latter case, it finds the smallest calc_addr+calc_size for which len
> + * is still a multiple and adjust calc_size accordingly.
> + * The rationale is to avoid nonsensical combo e.g. #adress-cells 1 and #size-cells
> + * 2 since it's not fully addressable, and to promote any other combo that is a
> + * subset of the original space, e.g. with calc_addr=2 and calc_size=2, returning
> + * calc_size=1 still makes sense since the region is included in the parent space.
> + * The reason for that is to avoid dropping perfectly valid memory regions that
> + * could just have been passed with the wrong format in the reg property (some fw
> + * are reportedly doing that when updating the DT at boot).
> + *
> + * Returns:	true if the region is valid and can be further processed,
> + *		false otherwise. If valid, calc_size is filled with the actual
> + *		length (in cells) of the size part.
> + *
> + */
> +static bool reg_len_valid(int len, const int *calc_addr, int *calc_size)
> +{
> +	int parent_len = (*calc_addr + *calc_size) * sizeof(__be32);
> +	bool parent_multiple = (len % parent_len) / sizeof(__be32);
> +	int row_n, calc_row_len = parent_len / sizeof(__be32);
> +	int len_b = len / sizeof(__be32);
> +
> +	if (!len || !parent_len)
> +		return false;
> +
> +	for (row_n = len_b / 2; row_n > 0; row_n--) {
> +		int tmp_row_len = len_b / row_n;
> +
> +		if (calc_row_len > tmp_row_len &&
> +		    tmp_row_len > *calc_addr &&
> +		    (len_b % tmp_row_len == 0))
> +			calc_row_len = tmp_row_len;
> +	}
> +
> +	if (parent_multiple && calc_row_len != parent_len / sizeof(__be32)) {
> +		*calc_size = calc_row_len - *calc_addr;
> +		return true;
> +	} else if (!parent_multiple) {
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int __init early_init_dt_reserve_memory(phys_addr_t base,
>  					       phys_addr_t size, bool nomap)
>  {
> @@ -154,9 +216,9 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
>  static int __init __reserved_mem_reserve_reg(unsigned long node,
>  					     const char *uname)
>  {
> -	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> +	int calc_addr, calc_size;
>  	phys_addr_t base, size;
> -	int len;
> +	int len, t_len;
>  	const __be32 *prop;
>  	bool nomap;
>  
> @@ -164,17 +226,20 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
>  	if (!prop)
>  		return -ENOENT;
>  
> -	if (len && len % t_len != 0) {
> +	calc_addr = dt_root_addr_cells;
> +	calc_size = dt_root_size_cells;
> +	if (!reg_len_valid(len, &calc_addr, &calc_size)) {
>  		pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
>  		       uname);
>  		return -EINVAL;
>  	}
>  
>  	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
> +	t_len = (calc_addr + calc_size) * (int)sizeof(__be32);
>  
>  	while (len >= t_len) {
> -		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
> -		size = dt_mem_next_cell(dt_root_size_cells, &prop);
> +		base = dt_mem_next_cell(calc_addr, &prop);
> +		size = dt_mem_next_cell(calc_size, &prop);
>  
>  		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
>  			/* Architecture specific contiguous memory fixup. */
> @@ -255,6 +320,7 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
>  	}
>  
>  	fdt_for_each_subnode(child, fdt, node) {
> +		int calc_addr, calc_size;
>  		const char *uname;
>  
>  		prop = of_get_flat_dt_prop(child, "reg", &len);
> @@ -263,19 +329,21 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
>  		if (!of_fdt_device_is_available(fdt, child))
>  			continue;
>  
> +		calc_addr = dt_root_addr_cells;
> +		calc_size = dt_root_size_cells;
>  		uname = fdt_get_name(fdt, child, NULL);
> -		if (len && len % t_len != 0) {
> +		if (!reg_len_valid(len, &calc_addr, &calc_size)) {
>  			pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
>  			       uname);
>  			continue;
>  		}
>  
>  		if (len > t_len)
> -			pr_warn("%s() ignores %d regions in node '%s'\n",
> -				__func__, len / t_len - 1, uname);
> +			pr_warn("%s() ignores %d regions in node '%s'\n", __func__,
> +				len / ((calc_addr + calc_size) * (int)sizeof(__be32)) - 1, uname);
>  
> -		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
> -		size = dt_mem_next_cell(dt_root_size_cells, &prop);
> +		base = dt_mem_next_cell(calc_addr, &prop);
> +		size = dt_mem_next_cell(calc_size, &prop);
>  
>  		if (size)
>  			fdt_reserved_mem_save_node(child, uname, base, size);
> -- 
> 2.35.3
> 

