Return-Path: <devicetree+bounces-274394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJD0Bg0usmmzJQAAu9opvQ
	(envelope-from <devicetree+bounces-274394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:07:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C88C826C9E4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 16501303CEEA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C3F383C6A;
	Thu, 12 Mar 2026 03:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A39+OUGO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PSqZeZv0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F35376BE8
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284846; cv=none; b=E9IuiM/4YCRgSgMQKSan6Pea3iBRYw4JoCyMPdch3ISYhs0LWULM2AR899feEuhFl+iCWtHsMv1OP6Sena0GctvjAXF8ok9zEDfPfO7Y0usFJgjr1zWdQ7BQDWAnrL8XNWh9dKM3t+pWwm8Ei+gnhvlBy2hpvTiigqCB6n2cgtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284846; c=relaxed/simple;
	bh=fx31dok0skjrBmp4xN0rQPPK/x9cQTxDjbrh8bf7WEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rdxm6St6y850DJs41FhuivO/H7W4xQFYIi9fnerdBXJifkGaQuxojZb0SKdAdqSadq5198OU4udk+VUsqCPoeiN6N3VzYS5jAEGlSYHTaoKn0i/j7o8+nlhZA6K1PBPNRMXXjgLeni/fY3E8vJj6+t8/K31sXLQcg9wgPuNZ+qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A39+OUGO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PSqZeZv0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMNMGY3536174
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:07:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RDykXqpwkk8mu6woc2v63jWt
	si9Wh/LNGs2SYHSgSAA=; b=A39+OUGOB7jHnha1JM+mP+NrU2+FET2WYOsEF+hs
	/oSSrs35qmSFuXoTZJKtkg4oBAFbfJqUMcLoil7nlEh8g2Ua9O+2pe5JJAFee3zB
	Z1zU2rkkVf2tHTSrjvoOBXkjgiFl5mNhD6TECmYs0UAXqskfQSKOx6SlalwAmqnz
	vdDH5uR7R3d9wXpbjFbSZN1Wyz4+pczGmO164APmk3RpOMsVnblOk5bBsD8YVB8x
	NxE7yqjr4fEaNU+fnfz91pvyGyuci4OBvckJ6CGPcofEBL4fnxZ/QxylnsIvR6N1
	CkVlG+2Kkz97g9Z7cghgB+VZNba9mRh4UQhI0DYuJBninw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54rpga-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:07:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81be6f05so339708185a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 20:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773284843; x=1773889643; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RDykXqpwkk8mu6woc2v63jWtsi9Wh/LNGs2SYHSgSAA=;
        b=PSqZeZv0OSV+WVptxVhJyq4/K1Y/UP9AjXs+R+Qun3dfozC+phKqs1CTxJ6JK/i6Ct
         +2pn3aYCqwjnZaL52ik1Aqyk+63YWPuLhazRwvKEFEOHwelFZOaHyd0SRxl1qIlPxypx
         FD34LZoxcr2DjQfOgDULCohuXledTmY8Olb+bi2YzmqY0fLniE3ST/pFN00axntkeW7e
         YEUnX3vfmf+iSDAIeMszZmcWZ4our/R58Hd2GvXzSZbAI6TxPHfu05r8l2nyOHbX953o
         X9dtw2IlbVaeiTIq2rfqRFsAh+x3ECx4DWP7kKkqedvuNcd5hqW7YwO7WjAorW4uRjVq
         6+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773284843; x=1773889643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RDykXqpwkk8mu6woc2v63jWtsi9Wh/LNGs2SYHSgSAA=;
        b=OD+j3Nmr6Pf/6EjL+QUIyvFx3KF0zEJqa4iLbWo01wDP1IVlUujTJM0qnQOu5uGLK/
         DWOIDsZVyqS/zP0FQsHpnD5fIP6DxWGWiF1+modZpaXPQVN/xDNEJ9taVUK9GNJREm17
         ciHltSDLGWb6KTCzE+ZFWkiu7X3Mqfnchy8U9cOG86afEqTdg2MHs/qDUzFY4pAGcOu5
         SmLpM2VvWujzxQveJWhZgA6HGBGWxX3KYa+hy8qNRTPgp5wEec5K5mbjppryGvSHzi4/
         iq+9z7ZelzthcUUwuaAMPsa/14r5e0rOjly8gwqKju9qqSbT1QbcWeTKH++k2DC3e1fk
         fOtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWswrbfJXveQ28ftCQxi5p/W6/flDJUzxY+/buvNHPX7W5aG8tNyZL1ocDLlpziFL8HsplIKoRtMsGt@vger.kernel.org
X-Gm-Message-State: AOJu0YzkADlkFGu694OWKBJUKCp0bQ82ccOGgvekGbLTy5WNvVfkPs5A
	3UsJ7LZExOUKzbDWXmUxOYcYAP/aPFUPxT9poetai1geIYN9OhSuEZG+sHsZYgiiQ3gBnZNRO6Y
	79MAa+soh5g3GA+mJaL+PkL7IkV2EWTYk220nekvL/DW+Cg2Il4NDzcDMzqwPz6jT
X-Gm-Gg: ATEYQzxqS1z3pgG/VYSulQXNpu/ZLm/M5wNLQxeFipNBZ5Sx9qVDivZQgdCGMn8WE2Z
	DLXFZDYdDQ320yyXNNWg32LHwv5QebBldmkp4bez+B2vV/81g6PAu2py6eRp/ojfO/wJzuOuxZ6
	jfbm0sxKr71gytzkt0Bv6BWx2/t7xesRiW9DuTtt39kn/GerJKSMpPlgeK8Ns1my88QAg0SynlZ
	oDGzGh0HOvENQFScWWQrRaau5YZ20OEb21fQvRUblIyCCVlOzl1KnzEV+WkMAO9smeYvkF8LHBj
	WMaalGhipgCONrzlNxMsU895NDLoykteiiKkix404hhRGLXJaeLrXxkw2aM2RiT6AIal8xLqZP7
	AMqUcmo46pDJ50n9IsM87qojxssBjt8ei9Kk8q6GBc7YjPCVRwk2KpYwcVY8DRhs7EY3WTv+rMU
	dR0Jlhypon3xF8LXLoRlIua4dRQLtL1jqMCV4=
X-Received: by 2002:a05:620a:444d:b0:8cd:78e3:879f with SMTP id af79cd13be357-8cda1a1bc1dmr614401485a.35.1773284843380;
        Wed, 11 Mar 2026 20:07:23 -0700 (PDT)
X-Received: by 2002:a05:620a:444d:b0:8cd:78e3:879f with SMTP id af79cd13be357-8cda1a1bc1dmr614399085a.35.1773284842963;
        Wed, 11 Mar 2026 20:07:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162af2sm720909e87.59.2026.03.11.20.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 20:07:21 -0700 (PDT)
Date: Thu, 12 Mar 2026 05:07:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Message-ID: <dco5knujhpt6rm6e2osfxsuqr4uqjz6tugkhvi7cnx5wbbpmum@ejjfx3d7onoc>
References: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
 <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAyMSBTYWx0ZWRfXwjbqClVgqyJ0
 DxFmk1oZ8nJ6dU18vbVVDLT/4j6tVbn02komu2+9j26tPjjViEtA3VycUnr6V2W0/BCap1M9p2p
 u/VWUrYWyJhVisfTrGhW+2zJOL4gZg02U+JjlVMVdJJVF5xvhiYxbgi0QK/dW6HTHhciQtGVXIK
 F+d8bz3hhKfWndBXOQsycp4z5MJc/cGNmu7HF9KXGs4s34y5LQ1HE/jSm8BQi+mt8FZaLbtBCQr
 qbdvpgO29rAZwBOtAmYG8/FZuU0Liow16fUaBGVHw5hh3mz89OSsdrR/R+tOo226awX3ZLdGoll
 QnkO7X5Di+TdHNTs+zA/DRc+xFtTLEKPv1DmZ0+earVohDrbbacB8FHiEYjGXqqs8UpbTxSd06q
 qmNpOA7tUfIU+JzKz9yBksm1uiXRbMF0doS+sXCZf7uaoqa29AQng58n+jntKhnClJadpwLRB4/
 4CdbW4Zj0IhZO/3qekQ==
X-Authority-Analysis: v=2.4 cv=YbiwJgRf c=1 sm=1 tr=0 ts=69b22deb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=7j0mPr_bSujbqgIjpDIA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Who-prdP4m3a_sbunMVJDZKQh9ICDCiY
X-Proofpoint-ORIG-GUID: Who-prdP4m3a_sbunMVJDZKQh9ICDCiY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120021
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274394-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C88C826C9E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:04:08PM +0800, Hangtian Zhu wrote:
> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
> 
> Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
> mezzanine platform, PCIe0 lines are moved from WCN6750 to TC9563 pcie
> bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
> platform.
> 
> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
> ---
> This patch depends on:
> [PATCH v4 2/2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1
> https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/

If it is a fix for the patch which is still in flight, then stop posting
it as a separate patch. PLease work with the original series author to
get it squashed into the posted patch.

> 

-- 
With best wishes
Dmitry

