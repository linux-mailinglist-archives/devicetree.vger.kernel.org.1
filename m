Return-Path: <devicetree+bounces-267194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLwHCdF2m2mnzwMAu9opvQ
	(envelope-from <devicetree+bounces-267194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:36:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F417073C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 29EF430089BC
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429E835BDD9;
	Sun, 22 Feb 2026 21:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xw2YEUME";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OSZCgAfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292FC1DF26E
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771796175; cv=none; b=LkkZMHKEyP5iqTrBCE80q2b10wrqJ4WrNAl/mCPHWDCgrMyN5Iwe5i6RsiCKfLMeMQcW12kc4W///hPwX+c32Ofrda3UbarN86OElS3XEQMgkWK6d2dvqcdlbXWS/fllOTah9v6UFWgqoUUumi8V+BtUbZT2ruZe+hODt0hpsmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771796175; c=relaxed/simple;
	bh=gBYaQxc77HBkhh0uwlLDfCtVWKCS/r7jzNxWrFgYMpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mNczmQ9DEqW5/i4rfUlL3+5RagjCEstrxmq3lwZQXrQTDdn+enUDVcwwskur5caqG4m41Ite33Ap2VelCt5ES0lvj1KU/TAI4gLDTtzMU1KGuZrjO7g9PVRw9vb7Lw0EtxMr6q/O8xckpuMyrGttS5r5imqIhg1p5MgCuDJa6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xw2YEUME; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OSZCgAfY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MJjVsv1365794
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:36:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YEyfRwd6krp9aI5coV8ALqRP
	3SvRd2AW4gFFNkO7ypc=; b=Xw2YEUMEpKntdwl2d5X0vVnkQrYt166c+1SgHROR
	HNGUYtKktAUaJflNElYWj66MnDG5VFc64/ekTcnbXbhDEsiyZIi+OkYtJJvZd2Jr
	CiQ8tRyshRM1jyTqbL9sIZcEUF3jsbrcvAjmqECEKpbU/rhT/hPGck3mMK2utk9b
	L6HSM9iyVMRC3oawIoBUWgoQO0tXYukjwRnAoEgVULzXnBcMI/R2KHBavGHOWyez
	fHkAK9oiJ8R316ZyxjysxUEc5WbfnQXAMuyERQ5p4+ylp8N82YSuW++McY7R8EEw
	9s5q40lAOgXLXz/d6bpZKUq9SUI6Zk728O43+156gp66DQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u9trqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:36:11 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5033c483b74so546402331cf.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 13:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771796171; x=1772400971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YEyfRwd6krp9aI5coV8ALqRP3SvRd2AW4gFFNkO7ypc=;
        b=OSZCgAfYCKxyzm+ktiA2teVYmVsWaqAN17CbPG0yK6RPI0s7it1sQ4/vt/iLIgcwjW
         1/X7XS8V6DsUy/V+HuDh21PSwC1uKubYhKfL7219FTeRHi1GLt4EBGEashv3ihk7hfE4
         DB9cRBP+Ky8sCs25K6URszzAJbQxgUnbr4VPlhoTGjDaTFPY34MILzE4J9stFJE9Mwuo
         mRER6wE8moZ6CUeMS0N3jn/7eNDHVgFtqKyyjsKqmIo15qVPRfiNsAE9vx4XjqaYSfhn
         a/1FpTkOlpfvuIpyHxs/h3Scq+vjQhFqxEt+mEi1fXJvQxhghS1YAVaHQWVAcvy/ANT+
         bUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771796171; x=1772400971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YEyfRwd6krp9aI5coV8ALqRP3SvRd2AW4gFFNkO7ypc=;
        b=D22LhWNAQAfO3C3iq2f8daO77aU24rQS/wfGgKsHL9HrtDP2Anj4gZHUbdJobGN/qm
         nXEnfytzkRaOMSgxGxWQQjMou1TMfq6vaaUwdSayRGy8E+XaUJrmuA88N5bkRuIVwES8
         EnjeH1oupkSITfMYJWvkbjxCsghNxe/BoeZ1B6/lJRis6OjPbC5jxnb7WKO6grgRiaE1
         Sr/fkgCbIzRVBDXdpkCMOoVdtuljaeiHu2DwMB1CHsK/pnTo96Z3pco4Q/3hMMfDm+sd
         P/doQQgUIhPKW6tAuFxTiBiuz3OZNgW2eRqYch95stYBa69/uUm45zg79wQlxMr7BwwP
         G8jw==
X-Forwarded-Encrypted: i=1; AJvYcCVHY4gVDc0L0npAY2V2HRwASgeVrqKVbJxijaw9mLAlkFww3WyBIjefEO/yiUzf9CzRlG0Cu8gksYd5@vger.kernel.org
X-Gm-Message-State: AOJu0YxslkdrnUcq82S82NQdtbDYwTxRmNOLbDl5jkCotURBoEPpTg7X
	E/KvU/zZDxD+mGRIsCyPJAJQ8SLJObLp+4ZSjA4c2d/kUITNpmEk3mGJ/Ker/U7CbBxp7gWhI4r
	MHnaKlmP0RQC1F59ci1IfFAhSjFGF5z/RFsG3VVS3tcReHDWG+C2+enDtK9UbXa+h
X-Gm-Gg: AZuq6aKiBcu3DXDr+ihvku4UOdGqEm05HCFMplnjeJQRxMSaIW1HWNPuAZWPpsKms2l
	CFr3DuDBHhtUEbM1oRF9mfbRphLshn8N2lEwiqqY+nV4Ab1Q47HdHQgcSOrLgdyyHndk0P0mGew
	TlGetVXUWhod/ycYDcj2oGQ5GnG34SZKb8pK8nuO4XudkT/tazJYrlCzo4m1WBEui2dCG7TSD8U
	Llaisc2wOajIdnc1RXLM8MXGKHHlONGmwiPC1gHpelvLGi4ajWPFv1LLihZZERcWIbLWfdw0l0n
	6+2bCXwNXgVjoTBYi98PYpMwG44hW6EE2Qc9ojhKmPCjpFin4FGFV+jR+qqwSyaVqM+aeEyq5W1
	WLRzDZSrObvkEe3NTjp8+IXK5fQEm6GD1dKag9OccMuVo6QVzuUS1KcP/84/5GTZw21i70FsD5r
	qKk3swY1Jaw9lgy7JdndL7BvyBtkf+Mq2S9ao=
X-Received: by 2002:a05:620a:19a5:b0:8c9:ea1c:f216 with SMTP id af79cd13be357-8cb8c9cbc63mr786962285a.14.1771796171278;
        Sun, 22 Feb 2026 13:36:11 -0800 (PST)
X-Received: by 2002:a05:620a:19a5:b0:8c9:ea1c:f216 with SMTP id af79cd13be357-8cb8c9cbc63mr786960785a.14.1771796170829;
        Sun, 22 Feb 2026 13:36:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b88esm1191601e87.8.2026.02.22.13.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 13:36:09 -0800 (PST)
Date: Sun, 22 Feb 2026 23:36:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] clk: qcom: Add a driver for SM8750 GPU clocks
Message-ID: <pis46xtmxgopk4w4kvu2qbbtcwchnbepaqaw3lbtfbon2cbjls@xjsfo65uj64l>
References: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
 <20260220-gpucc_sm8750_v2-v3-2-6c5408564c3c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220-gpucc_sm8750_v2-v3-2-6c5408564c3c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDIwNyBTYWx0ZWRfX7iRi6EmkOR8P
 rrzQe2/czvjyqrqo1rhahAFKAwD81+kiLEj/6yMdPIR6Ytz/+AVEt15kv+J9Ch5CuEm9jsz0sUL
 yH9a/LOR9u8xkVZNaB4PiCuFhdt9D6porCBPb6tVeA+L05xb5byDx3XdN0pD5wjbN3BCu0Yum8b
 NS/rimdiF6lUgE4UHUqbB0marIobKKqU7kib2WJeXnH1h9kSmxFczixnuGf0ysC9r7iFNw50kzE
 Sg1a/pTAl4dsh0cVceZjAnPXwhyEmxxKpVVc2EGsQEkUIzRrW+a/4uHpu43wkykfRBVhNlJm2Ha
 6TiAVOMroxs8uAB/8rjJ7P7RsGB+IP2KRmlyMkGQgBO3v7LTvcSPxsywoaDwM3fTaK5NfofcEg3
 nov6Y+gmkwn4nj7ics7tfoQ99gN3+hZYfgnkagPb34Kzc1XJGKU9V4GlHud+rsIWAO6RN3iqosy
 +LlzuAvZPt5KMmme3AA==
X-Proofpoint-GUID: 4GA-vImtV6YgcBENB5F1kkgIgFIzxISB
X-Proofpoint-ORIG-GUID: 4GA-vImtV6YgcBENB5F1kkgIgFIzxISB
X-Authority-Analysis: v=2.4 cv=RpDI7SmK c=1 sm=1 tr=0 ts=699b76cc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=91OgtvA7_0Jf-gwRHFQA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_05,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220207
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267194-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B71F417073C
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 11:24:21AM +0530, Taniya Das wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Support the graphics clock controller for SM8750 for Graphics SW
> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> block dedicated to managing clocks for the GPU subsystem on GX power
> domain. The GX clock controller driver manages only the GX GDSC and the
> rest of the resources of the controller are managed by the firmware.

You missed patches for the gxclkctl driver.

> 
> Update the compatible for Graphics GX Clock Controller for SM8750 as the
> GX clock controller is a reuse of the Kaanapali driver.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig        |   9 +
>  drivers/clk/qcom/Makefile       |   1 +
>  drivers/clk/qcom/gpucc-sm8750.c | 472 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 482 insertions(+)
> 
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 6b0ad8832b55f1914079f15323b8cdd1608ad4c0..817b13f5e78cb534e165b09d95e70cd4a58b12bd 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -180,6 +180,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
>  obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
>  obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
>  obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
> +obj-$(CONFIG_SM_GPUCC_8750) += gpucc-sm8750.o gxclkctl-kaanapali.o

I think, If both drivers are built-in, this will result in the object
file being added twice and, thus, a conflict.

>  obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o
>  obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
>  obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o

-- 
With best wishes
Dmitry

