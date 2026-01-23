Return-Path: <devicetree+bounces-259093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICD/OAi3c2ncyAAAu9opvQ
	(envelope-from <devicetree+bounces-259093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:59:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4F794A1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9BF6302C90E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E108E28853A;
	Fri, 23 Jan 2026 17:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGEqUpW6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IKoCF9KA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B6A284898
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769191100; cv=none; b=D1n1kVtFztrmB6+KyvfGh7pnFxtXCg5JPO2T/hXU5mI5WD020V0SzsaCvMKBM3KJrE6EUD1x/ZV7vItIKUByd28WJP3gXo/jcralM7+OKCwFOk0BBMw94KdHeXHYlJcvZ7hCEso9Ah54rBsclYq3rR12v6YatJFqa7ld04kftEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769191100; c=relaxed/simple;
	bh=hQiinBuW+xiL6GMNIiHJi5ah9n2TOc/Amqczq3mayy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LLJPdvOneZUDK1M3+Ijq5W76Z1Q9ie3AnFOKVGq8Nj7aAZHLbEdMgds4pPOqNBsAoK6qtvdib50YWCAiQ6Yubhz/lOi8mBrgkqn7NayBomhHvAeI0yqX4+RwijJ4bGyWZvmKTfRiJwl/bIzdqoBHF1ZtJ1up1ApFkuqlCoXbbQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGEqUpW6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IKoCF9KA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NBlqHw3656026
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:58:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fUZaUe3yHxgEI8SWH43Gd4iD
	8v8A03ybDiS6+FCaP6c=; b=kGEqUpW6TXoHlqgs80flmqy+Le6J6sbpwUvbMPY2
	InIJTKjyTdN1qtjjK55fPk13LJ4wPepnwBeHMxN6J+8HBLGKsWkYIMZs2do3iQNX
	b90WZHqbfAJbY12QHkLvjyqx30e2EKnJNS3IVSaFEDT+bNrAyUJAZLZ5lKyYAgcs
	0uRdb2LDudzfLwrm5pWA5MozJM5b5BjivJgRxjtlSFCcpQLvOHjy3fDkAt/g5is5
	zosLuN1lSITUrndCh8WiiHoimqzwEVMoG+6JseAP/7fl8/wSjhnEbBVFvSpLp/vo
	/af76ZzQxmuB68F4r4AzjmYUETzGV/7t0C/njItNyLz/Gg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv2hwahd6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 17:58:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c5e166fb75so578689685a.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769191097; x=1769795897; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fUZaUe3yHxgEI8SWH43Gd4iD8v8A03ybDiS6+FCaP6c=;
        b=IKoCF9KAQvn7FIvp9fpZOroTrKbTfDb8qQbtPxttivVJrBuzROH4Rlpd8IpZpT+rhw
         ghbzn0pVCgW0jp8vP6jVgrFjjNVSe/tx9hpw3c+axgsAJv5qIGfbTN+Hxg6ofO3IGwLL
         X0hCpy6K2M/+HWfnO3wd5fm7lCzie7j9OItfmdY0kkbd2661cMsFZy1cT0BBymQGOnRf
         z3wCc4ciApPc+06N8dCUER2hnVxF6DwJJPnlx2SxNhR85g1X1kNPIDZRe0Lo9Nh9J4it
         0MMfa7Ih9dKhEkQXndrFCnnHN6ZuxVSmz0gWdLTL0XTnHyjEPTAllJaMd8qfatbNFfPX
         iqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769191097; x=1769795897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUZaUe3yHxgEI8SWH43Gd4iD8v8A03ybDiS6+FCaP6c=;
        b=vzl6Qx8Yof2QjSfmvx5AJRafFNKN1wWJ8/xd/pqA1hn7JtoOdXq8C/nUC8dwsJsNB9
         UZ3lJSiky7emW1QMn+l4qzDvOO/0uDI4kvVeb3j6W4doy/Yg6ny9fgPhEU0+oJztH2uw
         9dR8WStFIzr/y6F1Pi9FatarSxS6lg4ZbymIamwaiKkvlAWp/NkikdoHjXRjnDgpFW5A
         HFUSfobVpisIqY/irtw/8qTinDKRgWD43YOQ1aaWaUQme3p71o9nyp/iIZsEj/P915pW
         29rXCUz9NL8iM8l+rONenZ5tE2/QhPpZAVgCYrRui6bFakx1sLEMQ0aB1VBr1kJa++Nk
         2NmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGkoQaG1YqyRREQaTmgaS7X9YE+S3P2x+dzYIdvS/qT1CKT5VOQhrkP7V/ZjQNbCXNSHkf1d1Z5aIo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe5L40wqCMlgTHeNw933FiUbJmEeCGdnJcvfEv8tlzW7uB/GgT
	ncUrAL6kM4VuHNNrMxBIMptnCuEnRhETuMPUxjhRebe0Vc53gHGw4bf0SydULJcIAwCGXXpjSBo
	HTBawPRjCu64fDjoAcIqIAlpgwThYXDQMPQ4S7tnfiNZmcN/qciLc12c/OBYZz2z58QQQuYBM
X-Gm-Gg: AZuq6aLcQrvPajl8VkZ0ITYqeXHrQtOVyGCJWCHorQU0gETQ3rekSK+HugyyuQzSPG+
	+MTJmqnJhmIX7d078IYC5wIdJmhSzR0nNefxWjeHcNNxrOd7blkDaAWzAmNmuchWHHEC+CcLczw
	YVL/f03YxNyUXADuy33TGFE/MoGFqGe7mGnKrL3cwMmuoI+3+2v51KIdYwS6PI2srxCb8UbwOWG
	6KTIaul0LJondmLxv/G8WR/kys6kvC4Qa+yGfQzixwDr+jCRHRu6qiL8OzwFByP5/qey99fqZ0j
	1DKe968HLWOu7ciV3dce+iaMPuNW+ff6FlXOB8kA1Y0zJxSnMAsgp1FhSiWzfnHVb/PFYqGMcSp
	a1+CV/5sSSNRlxQiz/axISn4tHTvO+3Kv4leXomM7ICGe7qcdnOMq+ldC96sTmyLJMN3EFIdoPc
	Pi+KU8Ic9iewtRf+pBDS3JttA=
X-Received: by 2002:a05:620a:4445:b0:8bb:a037:fd94 with SMTP id af79cd13be357-8c6e2dc0f12mr449843485a.38.1769191097357;
        Fri, 23 Jan 2026 09:58:17 -0800 (PST)
X-Received: by 2002:a05:620a:4445:b0:8bb:a037:fd94 with SMTP id af79cd13be357-8c6e2dc0f12mr449839785a.38.1769191096755;
        Fri, 23 Jan 2026 09:58:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a6c87sm7998301fa.36.2026.01.23.09.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 09:58:14 -0800 (PST)
Date: Fri, 23 Jan 2026 19:58:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] interconnect: qcom: glymur: Add Mahua SoC support
Message-ID: <vpaz7jhnuagfl24dow3ktyhjtzktmhiiwh2rnflub3jbc3pgu2@2ydlmugmqgbt>
References: <20260123-mahua_icc-v1-0-bc82cb087f1e@oss.qualcomm.com>
 <20260123-mahua_icc-v1-2-bc82cb087f1e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-mahua_icc-v1-2-bc82cb087f1e@oss.qualcomm.com>
X-Proofpoint-GUID: UJ2P1JHd1LCT6aeaE2qoIWEP3NG1xrtO
X-Proofpoint-ORIG-GUID: UJ2P1JHd1LCT6aeaE2qoIWEP3NG1xrtO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEzNiBTYWx0ZWRfX+ulPyYpcBlYO
 Ob/KfqVYQhApoBak/mLgAuP5sV8DgjkGu+9WO8dCJLjR5WhDrxIgJ39EsQIk5oNt78lWRZ7cdcW
 EZmY77EwQH8R4j+qkxK/4UotgBsUC5O57gepOUB7BFD2qa2QAWYPvMm/OW1PyFIEF2NKbLvoapu
 l08QSucSVmbdyz+EyaVN3abJTrDjbgRy7eF9xKa+FqopArEMsbDffbM5Zj3gpVrKdgas6x0QL2O
 DcRvHBcawWkLV7uX11f0OA3hbRsfjnMN2c21GqduM23HMqsiTtVSQ7SQBa2289qFjup1C6XxbP1
 UEnKd3xZ7l4j/9/kdt5isHE/8lqaM8giA91ngEqlrc7sSxF1H0Igu6uUarevHFdSWierCSAyiuJ
 AUcTD/wRMao4TOT/Uc6618JH8fWZ9c4+uh5rp7D2JFbBDwk0XsizV+akBIbNrqMUzCVSsVIG9LY
 JZloh9VOY0RQI8F51ew==
X-Authority-Analysis: v=2.4 cv=A4Rh/qWG c=1 sm=1 tr=0 ts=6973b6ba cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Gs9DxfeYQ8f1ewOiYYwA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230136
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259093-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 79D4F794A1
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:12:36PM +0000, Raviteja Laggyshetty wrote:
> Mahua is a derivative of the Glymur SoC. This patch extends the

Documentation/process/submitting-patches.rst, look for 'This patch'.

> Glymur driver to support Mahua by:
> 
>   1. Adding new node definitions for interconnects that differ from Glymur
>      (Config NoC, High-Speed Coherent NoC, PCIe West ANOC/Slave NoC).
>   2. Reusing existing Glymur definitions for identical NoCs.
>   3. Overriding the channel and buswidth, with Mahua specific values for
>      the differing NoCs
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/glymur.c | 153 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 152 insertions(+), 1 deletion(-)
> 
> +static struct qcom_icc_node * const mahua_cnoc_cfg_nodes[] = {

As you are patching other instances, why can't we just patch out the
PCI_3A out of these structures?

>  
> +static int glymur_qnoc_probe(struct platform_device *pdev)
> +{
> +	if (device_is_compatible(&pdev->dev, "qcom,mahua-mc-virt")) {
> +		llcc_mc.channels = 8;
> +		ebi.channels = 8;
> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-hscnoc")) {
> +		qns_llcc.channels = 8;
> +		chm_apps.channels = 4;
> +		qnm_pcie_west.buswidth = 32;
> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-pcie-west-anoc")) {
> +		qns_pcie_west_mem_noc.buswidth = 32;
> +	}

Right here, set the node entries to NULL.

> +
> +	return qcom_icc_rpmh_probe(pdev);
> +}
> +
>  static const struct of_device_id qnoc_of_match[] = {
>  	{ .compatible = "qcom,glymur-aggre1-noc", .data = &glymur_aggre1_noc},
>  	{ .compatible = "qcom,glymur-aggre2-noc", .data = &glymur_aggre2_noc},
> @@ -2477,12 +2623,15 @@ static const struct of_device_id qnoc_of_match[] = {
>  	{ .compatible = "qcom,glymur-aggre4-noc", .data = &glymur_aggre4_noc},
>  	{ .compatible = "qcom,glymur-clk-virt", .data = &glymur_clk_virt},
>  	{ .compatible = "qcom,glymur-cnoc-cfg", .data = &glymur_cnoc_cfg},
> +	{ .compatible = "qcom,mahua-cnoc-cfg", .data = &mahua_cnoc_cfg},
>  	{ .compatible = "qcom,glymur-cnoc-main", .data = &glymur_cnoc_main},
>  	{ .compatible = "qcom,glymur-hscnoc", .data = &glymur_hscnoc},
> +	{ .compatible = "qcom,mahua-hscnoc", .data = &mahua_hscnoc},
>  	{ .compatible = "qcom,glymur-lpass-ag-noc", .data = &glymur_lpass_ag_noc},
>  	{ .compatible = "qcom,glymur-lpass-lpiaon-noc", .data = &glymur_lpass_lpiaon_noc},
>  	{ .compatible = "qcom,glymur-lpass-lpicx-noc", .data = &glymur_lpass_lpicx_noc},
>  	{ .compatible = "qcom,glymur-mc-virt", .data = &glymur_mc_virt},
> +	{ .compatible = "qcom,mahua-mc-virt", .data = &glymur_mc_virt},
>  	{ .compatible = "qcom,glymur-mmss-noc", .data = &glymur_mmss_noc},
>  	{ .compatible = "qcom,glymur-nsinoc", .data = &glymur_nsinoc},
>  	{ .compatible = "qcom,glymur-nsp-noc", .data = &glymur_nsp_noc},
> @@ -2490,14 +2639,16 @@ static const struct of_device_id qnoc_of_match[] = {
>  	{ .compatible = "qcom,glymur-pcie-east-anoc", .data = &glymur_pcie_east_anoc},
>  	{ .compatible = "qcom,glymur-pcie-east-slv-noc", .data = &glymur_pcie_east_slv_noc},
>  	{ .compatible = "qcom,glymur-pcie-west-anoc", .data = &glymur_pcie_west_anoc},
> +	{ .compatible = "qcom,mahua-pcie-west-anoc", .data = &mahua_pcie_west_anoc},
>  	{ .compatible = "qcom,glymur-pcie-west-slv-noc", .data = &glymur_pcie_west_slv_noc},
> +	{ .compatible = "qcom,mahua-pcie-west-slv-noc", .data = &mahua_pcie_west_slv_noc},
>  	{ .compatible = "qcom,glymur-system-noc", .data = &glymur_system_noc},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, qnoc_of_match);
>  
>  static struct platform_driver qnoc_driver = {
> -	.probe = qcom_icc_rpmh_probe,
> +	.probe = glymur_qnoc_probe,
>  	.remove = qcom_icc_rpmh_remove,
>  	.driver = {
>  		.name = "qnoc-glymur",
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

