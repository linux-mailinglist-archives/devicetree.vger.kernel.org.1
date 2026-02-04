Return-Path: <devicetree+bounces-262791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODq7BHaSg2lCpQMAu9opvQ
	(envelope-from <devicetree+bounces-262791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:39:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFFAEBB91
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 12050300B866
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2182F4279FA;
	Wed,  4 Feb 2026 18:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VsWk7wql";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bisoZdio"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEB3423A89
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770230387; cv=none; b=Uhd3AclH6s2j/J+rFcEjsNNpZ1iNJeWAgTAOPpJwLzWHtiazsAddUenZ8QNIPQa3TzEMkE49dhyWrcdHR5SASBYJxlErjZQ5UHam7Sbe8fL1r1s49cNAkv13ChwhxyH77N5RIBTWdhWATS+OzaJcJHzOF7VjyYk5Lowx9WoWuY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770230387; c=relaxed/simple;
	bh=4xHL8leDKCLz6JEsceKtUmCPHoByynQNq65Q405b+EI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nKn645OQn7/WmpLr7PP1xkjX9RddEdfaEKbmDSRF3yKrWvbiDPXGNRtkZ0NzYNgLRmc/ZqPC+eRMHGEsC6TOops4Gzt9uyZ8Lz3Dntvn+RyFOV8Ul7nEK7JdVNj+Kx9I/LF57TmK9bXoNQtOy8Yh7PXbQu97nyObZU2NayoTraI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VsWk7wql; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bisoZdio; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CITYs1246186
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 18:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I1Ej76cz71aZvXkYw99NqdEA
	d6dQhn3hI8uMX6IFc2o=; b=VsWk7wqlkw6gDKSyQDZyl6ZypAYi3bN6sGNiUk+K
	I3gipjoxIWCkPAsT7Ko5OCYT8tAXiBBHRx+4JX7Q4CjA0CU/Sr+pmNZDP71LPQR8
	UTp0eekjVMab+8ODgqgrJIUnEfRXBLzjLK3Vkw8y5SK+rxZHrcoWAFe0dVwi2FCA
	2+ukxmOEiwjdMRACDzBkry5EG1JL3ieU/51HH+cQkBe1bMCbDOxCKCv7qMU029DK
	H3aHq2XTUVxGaN8bD90tNJW8qeGxsq4GLLM1ru44v69RZad7uYLcRElryHnYsPOE
	U7Fh7aOmErfL8wGB6OUd0vP55aC7ltAwrR/T2wLkOMjkvA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ru9br58-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 18:39:46 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-124627fc58dso349300c88.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 10:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770230385; x=1770835185; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I1Ej76cz71aZvXkYw99NqdEAd6dQhn3hI8uMX6IFc2o=;
        b=bisoZdioyUQM//MiIwNg1Ddx5FIiBp67+PeAqOwLRlX47eS7vBZiO3FdRT8/b7CsId
         EJaAxewDzp4MMixoHXJgQev5vFmOCXCFDuKaQK8THEBKCTj5JThYZ16f2/YfYoSBdJbe
         cty04V/vWlgwiMNUMS1fU2LYQWBa1cKcoCp13I+ZAUV2p0FSHJb2HHgIwVG/6ERKnBnr
         RIZEPGndEnFH0Aqb69G9gPcfDHMxUZHmp91GgFNKLCwbjEYGWNhFsXjZLrquP0m/CWIV
         1AG1Q/rFLHRE5ygzJbMsKhzY+y+Cj2Q/iCKVwlWzmpzc6jRzKAgGGVJmtRbcPOKiFYLl
         i/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770230385; x=1770835185;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1Ej76cz71aZvXkYw99NqdEAd6dQhn3hI8uMX6IFc2o=;
        b=nyE6y+Wn9yE+8t4mtO0z9ALljnaJSof9D8SKzXQxaPeyjcp7KRcA2z3NJS81a+lG+M
         R+MN/5/2ycNTUjEqbME/Jf6TYxZ9ui0soiQWrSuJGMc15GRWWjyQWDPIIPI/cdAKPy5j
         /iHHYkRSiFrPo3ykxp3dCei4dcliJ2yAiJs4+SeQvUlxfbpjIu70P059ioNAFazsCVd8
         69QKVKFKRlsNIq0xAA+azfo1zYn+UELst2Gf6DldQypzUOcyGjVWRDpFdD89qE5ZBSbh
         g+z6ahBf8lNEwffQfIck7ekVv5crAKp6wl0d+VialEs6O614YqeKIB2DfvjKOrGb86XX
         X7rA==
X-Forwarded-Encrypted: i=1; AJvYcCWs0u1/yXiYGT1gjXFT53mE7h7IM5Jy4iNmROhF1g/yBNIXRbw8CjrTARzn8DFvYJdRsMRLCSe2Ed1f@vger.kernel.org
X-Gm-Message-State: AOJu0Yyywn0oAZo+R9UQ+2XwBo0EXfchD8Zqv2t7ov7Nni6YeHWr1BJS
	R6EwUokkw2gybgmCurYApuEq4gYNpeJi55Av0tD9Tjw9yFuYHTyM0fItQOZC+NiJqlwZfsG6y2L
	7kU+cWDx5iFYbOIVClgv5d6XlFfkkZNTZ0CF8npIoZFJptEf2be78vq9r7PQsGdnz
X-Gm-Gg: AZuq6aLrTBLYUstOfAp08tpuIGNuZNm2ZqJS7SdxuO+komUL+DWdYEsNTm27tnjk8Ut
	JOPtJ88tGkjxX1wegw4Cxq3eqTtMPYkNJ+21mIKbD9pYCFWy5IzxK8myHQZdsAPGkU8MmcNourR
	dTZBJefHKjHYHk8LHwLR6RETOOOn9SuBoDXV7nSoX9yyqBRvCv1/SSXSoWT5St9fKbYvtrKLo51
	9Iw3k5xBocCTurCRIqnaSMbVi7r4Wg9uS6oJJEhXIlm9aASctHcnHLxf72EsgcXK58P3xgNVEf/
	PUWilBYhrg/x8O2RjlrI1ckUf38MjQELgDCcNwUlBqlidf8ZYCfPQl2bfQNzPCr4qt0qY+pSNFx
	AkOB27w0SSk3U3BFeUmY=
X-Received: by 2002:a05:7022:b91:b0:124:a610:62f6 with SMTP id a92af1059eb24-126f48e2d5amr1318232c88.44.1770230385392;
        Wed, 04 Feb 2026 10:39:45 -0800 (PST)
X-Received: by 2002:a05:7022:b91:b0:124:a610:62f6 with SMTP id a92af1059eb24-126f48e2d5amr1318219c88.44.1770230384803;
        Wed, 04 Feb 2026 10:39:44 -0800 (PST)
Received: from localhost ([140.82.166.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f5030e22sm2666926c88.10.2026.02.04.10.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 10:39:44 -0800 (PST)
Date: Wed, 4 Feb 2026 12:39:41 -0600
From: Andrew Jones <andrew.jones@oss.qualcomm.com>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>,
        Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev,
        linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org,
        spacemit@lists.linux.dev, devicetree@vger.kernel.org,
        zong.li@sifive.com
Subject: Re: [PATCH v3 3/8] iommu/riscv: Add HPM support for performance
 monitoring
Message-ID: <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDE0MiBTYWx0ZWRfXwMZdJie+CL7c
 lvkKTwAzCEzdxCQqfNzvfMWPwzN3iC+NkArj3WUsffnIlxYThn3t3ohck7YMqCESiBPGmf/VD2f
 zBU5Yz8tQ1nrl9IA4akxaHty7y6pcH5HE/p7zqxTqmTO4qeea6J8PM8+ORG8oiSdEclEt7Gu+OT
 xpZhTs65JdwQSAzJMTY5jNRfMw3+ih9xtc0gltQK/po4CDwmAtY11BTqPkPK9HUrezUIz38/aYB
 Vlza00xErpIAYKbbPmqcpWoBPVzkab0olG5XHpsGtsSyM/etlm+ny5KK1//zY2Wagc9kNpjwKmy
 XPxCA7R4HUO8J4+z94q/nvEbZAX6nllXxupIOgTSkq6pTGlyVoDYq4Xn+CjleELghh31pxZnAfs
 7PPKV8PWjDb77lzlIe9TIMbBCW4+VYU/JwkHhMBIphgT0nLen3H2WBWwcBKvtGnZTxaAcMIGx3Y
 PkmukWd5ekcFpFJG9SQ==
X-Authority-Analysis: v=2.4 cv=IJoPywvG c=1 sm=1 tr=0 ts=69839272 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=cvcws7F5//HeuvjG1O1erQ==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=pFyQfRViAAAA:8 a=NEAV23lmAAAA:8
 a=lv0vYI88AAAA:8 a=ZVKkqgoUvZHFR46stTEA:9 a=CjuIK1q_8ugA:10
 a=vr4QvYf-bLy2KjpDp97w:22 a=oJz5jJLG1JtSoe7EL652:22 a=9qqun4PRrEabIEPCFt1_:22
X-Proofpoint-GUID: QfIJz3pTBLIPrfQpwDJKgVDIka4153Jg
X-Proofpoint-ORIG-GUID: QfIJz3pTBLIPrfQpwDJKgVDIka4153Jg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262791-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew.jones@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4AFFAEBB91
X-Rspamd-Action: no action

How does this relate to 

https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/

From a quick skim it looks like there's plenty of overlap.

Thanks,
drew


On Wed, Feb 04, 2026 at 05:09:01PM +0800, Lv Zheng wrote:
> From: Jingyu Li <joey.li@spacemit.com>
> 
> Introduces perf-based HPM driver for RISC-V IOMMU, enabling performance
> monitoring capabilities.
> 
> Note that the RISC-V IOMMU HPM module uses COUNTER_MAX-1 as a static
> counter index of HPMCYCLES, and 0~COUNTER_MAX-2 as the dynamic counter
> indexes of other HPMEVENTS in order to correctly index into IOHPMEVT and
> IOHPMCTR registers that have already been defined in the iommu-bits.h.
> However the users treat 0 as the index of HPMCYCLES and 1~COUNTER_MAX-1 as
> the indexes of other HPMEVENTS, thus care should be taken in dealing with
> counter indexes between userspace and kernel space.
> 
> Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
> Link: https://github.com/riscv-non-isa/riscv-iommu
> ---
>  drivers/iommu/riscv/Kconfig          |   9 +
>  drivers/iommu/riscv/Makefile         |   1 +
>  drivers/iommu/riscv/iommu-bits.h     |   6 +
>  drivers/iommu/riscv/iommu-hpm.c      | 843 +++++++++++++++++++++++++++
>  drivers/iommu/riscv/iommu-pci.c      |  13 +-
>  drivers/iommu/riscv/iommu-platform.c |   8 +-
>  drivers/iommu/riscv/iommu.h          |  42 ++
>  7 files changed, 919 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/iommu/riscv/iommu-hpm.c
> 

