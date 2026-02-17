Return-Path: <devicetree+bounces-266089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNh1KfZVlGm8CwIAu9opvQ
	(envelope-from <devicetree+bounces-266089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:50:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEE814B921
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F6373014565
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807DF335547;
	Tue, 17 Feb 2026 11:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EgyJuyKy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MbdcrILY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0033509C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329010; cv=none; b=HF3QczySDYijtx6ZKdnTCO8Ymf0UgHwu6wD9W/0Jqfac1U9k5LQdORy/YG3SU7KRM0lxlU0ezSb1Rc6pAiG+0VY+XoEbJVJcNacAsNiCw6CVT1UAM2REzbBHkUBnIzcaV8VDzycCDn1F8yhjvytTo1wtWCpqzszmeDzTY85ElNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329010; c=relaxed/simple;
	bh=NCjtlNucLfyp5zlzwXlpdQiVGY+9jr79qHBlVQW93/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A6b5ayNhS+bi1ZtotLIDELgA8hnkfv2QUawTVsjpjwjYiLzmJOiGreNoZzIErSd+l9kA7j7iYTN3YcavR9cr5UXMuPQ06S8H+EvSOZj/Oc50Jzp4/0MTMzdHV7UN8EzpcxYaXkHOUuqqqOc/BeOJrMfbH7SVjJHtMGMtdOSt7qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EgyJuyKy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MbdcrILY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H82AHZ982436
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wga4hiWjY8cKz3LP1L4qE8mRvDcvLKscrPkdZN0JmLI=; b=EgyJuyKy+UlE7kLu
	TcgkWiHq47DyOvjI2TerhEFxSuWeArTwIs3/leFfEvADxMWNKmNT5oQqKq8f9sHt
	8kwUJJmInYuOAuDn2uT2ciQOI/zk97oPDMkYtapVL/tOlZkeRJzNAk385vY+W/Tt
	3uJZM13hpN1ulBcMxO5EE9AAvP9pqHt/OKqnADTE0Vu5flCvkE7qCkc81sCyRzKZ
	2FWRBqmKokFVUL1wQ+9geB2jDqLO/aVOA3Ka+IuWqbFm3mLjx1ChX57f0FqIcXx4
	+24nDsGxMQZZxU1eH99Hb64l3ClxLjYtTG5Q3NIqhxHTBeVUCGqK5udomOpKB/lM
	grh/sw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662t810-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:50:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8954ab64c65so42437796d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329007; x=1771933807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wga4hiWjY8cKz3LP1L4qE8mRvDcvLKscrPkdZN0JmLI=;
        b=MbdcrILYi6DqL5tU67ImhHUmdU4ZYzGu2O5ATubPxmz1Nh5tF8OMeoHlU0ljn4f6ew
         rMfmBnsogWeVdxplL9LAWuRvkBaJuMIIOjE4tyRIK0jBOSXc7ycl5cUcs3PJ4QxfqYEB
         2FsycpcebM0SOxqVOGbAVAUtaK6bEWXQhnBVNE76ooVV/PROOwfuqQHEkwBZIQ5Wd1/1
         S9O88P3nt7C3f/ohBjDN035lajLd/mLiUWhKSorTDll/QKcaQu4Y01E+qBs7n0VvN1zb
         2PSwb9bw5PIFGPTOA21ux8uIiHyCSElFk9asIZRSRBIhcFtAiRy9BU98ND2+MYn/pYTm
         J14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329007; x=1771933807;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wga4hiWjY8cKz3LP1L4qE8mRvDcvLKscrPkdZN0JmLI=;
        b=qUjOt1zhakXA45yOPw4PqlUqf592TG1o0NSGI+1qbin18/rNjRPgZP3+HDP6IYbWkt
         M13voxQcMss08VlVhNVbdoNju8vZuOBGPlGLYnkxq9KUwEQRipYumvRFB33mytN8V7KE
         M6Mgqno9Q/9E5O0YmMPZAIdOUODpHjrbN2C9XvZ0pjtGRA0WD7icqIwmP8Kea6FpHvFV
         chuCebRujo5n1+7lW8SfkXzmaWIOfHXR+7EXx5y0ytu98dnLvSEwjnO2d+ODf9wOQes2
         gXDGX6Nlp7wKpy9WGkKHwvfzDfxKavzhJsHZdGIm8pKPQCykZ5vCPcvb6si74acvQKL4
         AkyA==
X-Forwarded-Encrypted: i=1; AJvYcCWwgoXm7MLF8xcG+a/R5lSbPKHv+SO7wYRRJ89Q+O04QOsU0oITnIRj+bmISMH3ZdCRHxUMXZ5cddVD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2pbVR1y3K2geV4yy6vrOCYvVji5rOxO84WXYz4EXLAJu0nwqO
	q2fr8DamabfhmQj/bm5Tf6EOfClDaxIwXVRczW+HlQ8fMfxHqZLbaBiDOouDSo7pAgU4/scsUeQ
	wvpZTge/BBK23J/fRAMMg4i/heG7EwJUGwmGh+qjsfVXo64JFHHMxfXBDVV3S8fMJ
X-Gm-Gg: AZuq6aLArextEWKvniQVoSIOt2sw6f/CltGg1DYX38A3L8ZsZnd/tYEENH6hULsmYWT
	iFlVysmyYcfRR6BpRxIx2ZnraNhqOK10BSBWzNrECHKZY9fnWCILyKTf0A3x4nYoTYfZynEXkKM
	XmupqctQ8gXeIluiwKzoINr7LV4J/oP2/vu++zqhPPAKL29qy6YSOS44JtikEciYVENHAQK5Qr9
	WZrCoVQfduXQS/8mEH5vfiQ5P5w0DoRgp3RJCud/sB7tMm+nhBEwkOa0l5N7YtV7Zy9UnH49bvb
	7sLxT5wEMcynDzlNKkapQjwGrLLt7hPYnK7qLc4v7jZ+y7mmi+av6rY8/2aYwEQaUwBp4w34unS
	seiyTn/7IlP1w2XHr/QRH1Aw/zx53N3DjYXU0kJ7HJ/pKT7t+cy0zLC7TnohTE5sLZUoG7LBBg+
	Jbe30=
X-Received: by 2002:a05:6214:8008:b0:894:de0a:4cf1 with SMTP id 6a1803df08f44-89734819033mr138987196d6.8.1771329007419;
        Tue, 17 Feb 2026 03:50:07 -0800 (PST)
X-Received: by 2002:a05:6214:8008:b0:894:de0a:4cf1 with SMTP id 6a1803df08f44-89734819033mr138986866d6.8.1771329007004;
        Tue, 17 Feb 2026 03:50:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc76655absm333837566b.51.2026.02.17.03.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:50:06 -0800 (PST)
Message-ID: <389dc762-bd20-44e5-a3fc-256b42f3c82a@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:50:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/13] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-14-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206174112.4149893-14-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfX3Ao2t8o7oiig
 vJzxXuIuwO3S8aXIEI0nDieh33P0grACR+M2Mpeb6Cl4wDJu+bzIEc30EeeOYi2bYDG+lrpTdI+
 SOxYlJvI3xwxOnJxPVszKIXT0yD/TvvQMPRtRmcFAyhQECDlh8Es+UjZPBj95iC7GTl5tKD1+Rc
 PVPbAkoj9OEy3BJ3V88w4CHQrw4RjgJCuRH/NzkiMTImhljzsbUPiBd5Pj7H0j6LWIogOHCvPmQ
 yhXVik/4jdcwgA7NlsyKHPogI5z3Q8eiS9QnnJ+POVVS1Gg5chspAJJFZzRoZRLXssRwVfwWFW+
 uuEjihOqr2grjZAUXk1o3TQix21h4J9gpYIyWwuw0gcnNCUIZ6ZfWswwRPU9pdN+jXSYsm+Zjus
 mDiJuO+ZsR5BVyNz38gTkkfM5waOD6tKJ8sh7jSOr4kXZ68dSYdXVK8cK/ljlQRURaTjteOp4SG
 e73TKgua2QxTand65iA==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=699455f0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=uvtuXJDLjHB1kenEHasA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 69N0_h00pYmY4I70V-QsRQaYLeLJcPLQ
X-Proofpoint-ORIG-GUID: 69N0_h00pYmY4I70V-QsRQaYLeLJcPLQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266089-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4FEE814B921
X-Rspamd-Action: no action

On 2/6/26 6:41 PM, Praveen Talari wrote:
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power
> and performance protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> The SCMI performance protocol manages I2C frequency, with each
> frequency rate represented by a performance level. The driver uses
> geni_se_set_perf_opp() API to request the desired frequency rate..
> 
> As part of geni_se_set_perf_opp(), the OPP for the requested frequency
> is obtained using dev_pm_opp_find_freq_floor() and the performance
> level is set using dev_pm_opp_set_opp().
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> @@ -215,6 +220,7 @@ static void qcom_geni_i2c_conf(struct geni_i2c_dev *gi2c)
>  	val |= itr->t_low_cnt << LOW_COUNTER_SHFT;
>  	val |= itr->t_cycle_cnt;
>  	writel_relaxed(val, gi2c->se.base + SE_I2C_SCL_COUNTERS);
> +	return 0;

ultra nit: a \n before return statements is preferred

[...]

>  static const struct geni_i2c_desc i2c_master_hub = {
>  	.no_dma_support = true,
>  	.tx_fifo_depth = 16,
> +	.resources_init = geni_i2c_resources_init,
> +	.set_rate = qcom_geni_i2c_conf,
> +	.power_on = geni_se_resources_activate,
> +	.power_off = geni_se_resources_deactivate,
> +};
> +
> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
> +	.resources_init = geni_se_domain_attach,
> +	.set_rate = geni_se_set_perf_opp,

I noticed that because this lacks .power_on/off, the
pinctrl_pm_select_xxx_state() functions are never called. Are the GPIOs
managed through the power/perf domains of the QUP devices too? (I would
assume not since there's a TLMM node in [0])

Konrad

[0] https://lore.kernel.org/linux-arm-msm/20250422231249.871995-1-quic_djaggi@quicinc.com/

