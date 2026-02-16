Return-Path: <devicetree+bounces-265906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBfCHG9Qk2nA3QEAu9opvQ
	(envelope-from <devicetree+bounces-265906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:14:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBA0146A0B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 18:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 50DDC3002F77
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFCCE2D6E58;
	Mon, 16 Feb 2026 17:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JMvM+OHz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NpCC7xpo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40362BE031
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 17:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771262047; cv=none; b=OG/5mKnj6tEfQjaKAWu8DCE3ZvbAAIqg9cBGX6irEkCGq7gn0l6zDOLWwZJU9UlLtDt+4w89GGFINTiAuVrSgVQ72x/W5GA09sSMxAP8Np2hX6FsF/itgSSGmMYTxAImH7rrpW5ShWjgaet0q0JPZ7sGM942T23lQROp7zR1hms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771262047; c=relaxed/simple;
	bh=DJfoagWYlcT7C9h6T8R8g2p5mRdkknDD4p0iI8EnbJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UsBBQOORUr1ntp3OQWuXBlOcB2YQeXXnErADqbTuis+EyOzxBaPEjbKNyWUkH/YWDjw3oMF9BI1D2YnjlihLoeuOJh6R+yMVwU1gSV0nwWq3yi54ue7gb8o4V/EUucWF6TiDamhaUaYmr0XJ+hhDrUQgf6s0QUkQgrYaSFNfeG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JMvM+OHz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NpCC7xpo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GG1i65048843
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 17:14:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8YzRM8u5SY+kbtvUuFO0hctv
	CD25XVo03kPlNPSNdN8=; b=JMvM+OHz5eRh4zvi+NHjLJ2YoYUuB0kacVQGHp9G
	t/ciwnM7uUIj2aKY5XoYRqQLDepRuwtWhQJ42txhfZicyWvZ6e4Mt15fjLrEgWc1
	u9FKbPfjrw6Ro8NsbQAiSTh2MLNxKjyBpdlal+wh+pNPa5vxOFT3HFudBbI5cOyP
	ea6EhDOJPQS3fcFjLmoT74OuUZgaSTSj0ss10HlLI11B/VpS9iFGm0vftlUJOv3j
	fCSldRd8cacdhgz8ffFrF8TcqyBsfmMuMpoFvk7qmbogJ/3J1zHQTLnwcKKTJTet
	cFtVQZDZjjssdkyWTBO2RnnRg7U+jhnsLD28v6M/3t5G3w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6d805ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 17:14:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ef98116so2288159485a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 09:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771262045; x=1771866845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8YzRM8u5SY+kbtvUuFO0hctvCD25XVo03kPlNPSNdN8=;
        b=NpCC7xpovC5NgXyBWL5BaR1Rjchnh8qnKy3qqS5xSk2zPBjqOpKHz7/45g5iSce5KZ
         +/pl13/7zpC8MoXYxygWgfpXT3Bl9muWCPP3DnSSpGnj1jgkPqZujb+77bwReON0K81t
         ncRZ86dUQgLI6Q6S2kmHB8YXNtQHn9jxRxxLArgbHyg/WhHvzx/ZTA83xngWzH0zAvVd
         Acvl34iQGTXNt7YT9X1cSEFq6yebksMUOs1I8/jFKqjXO7EkvpBz95LVWGlHOpYkOWMx
         wOu6o7lmlFaNuhTRKt2/l52IDbqIr9TqXZXbDEHVywFs1TVN0whM7LTJmVcOgbIWglso
         nrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771262045; x=1771866845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YzRM8u5SY+kbtvUuFO0hctvCD25XVo03kPlNPSNdN8=;
        b=idXhDM2sWZ0AVp7H0L0tpoYhgIePDG6+UdD0JYm7/hXDt2N8nVQjoSzoHVfseUli0G
         u+J4ecZ5npkO9m/gJC/5CHYIZo8X7fRxRQkw/BhNx5NQwvBJo6UvvHZEUbG0aRoU3UJz
         WqIlRyP3dqcERxXDcwdy1xPzRyzqca8EkTEZhpvF3euhejEgKOjkecWBeCCzrG3+g0Hz
         xfIvtL2cAMdWTg+1MwZDNlx6pwNXUnG+4JBNtG/C4+fEow5qXAAEjeH3LuAgn2OrXx1K
         BS5oECGV5QfIx+LHw3CKPoCXyq3g4T3b2F0C+yLy6mJmi59EIJpUJ3iLM5eX1/2zr1T/
         XeBA==
X-Forwarded-Encrypted: i=1; AJvYcCXCu0arQd4IuznmWUsFJDawbOkpKp7qivo18+DqXM0kVaIFITBQtw+G4L7so3GS8/mOrzFy8Op3PeMB@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ6aCaKak3gRtyZSElMRGktP0k4/8LE6jZ3wuvDOIMoBBKyUSP
	HGA3BcAJMGeZ2R6vQOsElbEJpB1adbFsDADxmJj3UIFO39/U5LG2E05de/D4qtq42UnzC5Rdoiz
	o4ykBlvh8BLYk8mvjHO2n2horMfEz0/y2mVriMnK6o/fL/F5jwZop5lel3Xc8EHXg
X-Gm-Gg: AZuq6aKtCvKO/IaCRy6Zww87fIDq+DFPjE188rmRL5PfHrNF+USwe4OCbpDG5RBMOC5
	utVFoi2azRvWcrloQzlMoNGX5cmO+rKPvUAJQ/dtcCZRXWpA1n4hNYfgmHpvaIebiut5I0yytSp
	TA5mib9+eZ3kWsNUGT56/Ulg4LyMT3ti2mIpL4gaNwbyOXeEfQ3IhkmDEGdMNI+9ONatFvIUBk8
	wQxNzz1YdvV3PHX/ktaF+1SiyKOiCv8DaeXD/nT7+3O8MEm/JWhHHhwMlgsURcRuqpP8yOf8ESV
	ArDFqPnZ9+nvV+c0BG9JR4eiNWDE34JX2CWAn6zX3PfifQMRUosMx7v+9zqILJeNWnhGg5Qmn3y
	DjuIJlcVBnqrvZF2CDw6ZAUp87xSEq+yd/+RJ
X-Received: by 2002:a05:620a:4706:b0:8b1:f1e4:a3d2 with SMTP id af79cd13be357-8cb4229c927mr1280895085a.24.1771262044885;
        Mon, 16 Feb 2026 09:14:04 -0800 (PST)
X-Received: by 2002:a05:620a:4706:b0:8b1:f1e4:a3d2 with SMTP id af79cd13be357-8cb4229c927mr1280891585a.24.1771262044384;
        Mon, 16 Feb 2026 09:14:04 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d482480sm496539185e9.0.2026.02.16.09.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 09:14:03 -0800 (PST)
Date: Mon, 16 Feb 2026 19:14:01 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
Message-ID: <3vn7er5thzwnly5kihzvpjboik5fm7jfotdvqspt6p73horbpk@67k6weab3ec4>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-4-8afc5a7e3a98@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216-eliza-clocks-v3-4-8afc5a7e3a98@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bqVBxUai c=1 sm=1 tr=0 ts=6993505e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=yZxmAL73Vz1KKP0sLwcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDE0NyBTYWx0ZWRfX9kyrOhcFjm2S
 OwXcQTHEU0LIUZ5ZRSf5Zhwa0iJD5WxkIn9fiz6T6cflHCsbVwxagLSyeztSRxmgrTWHQ1geLeM
 QqGlqlCYtnUONAuFSOg267OsqtUVD5WsWgZ6z/PJwcIQuzFiSnCfasevXLt57dfiqz3XAijDMha
 gEs48cuatEwHGu7eC2JaW+yd/YElVNeex9Ku2c4SgZoXdAkv3SOm9Jd1cJ41L6URKMi82uy8VfL
 MCiSjGyNhWYOE4EyKNYG0LlgbKJiKhFK+gDrqUG/hqvnLIRVyvEWOegyNv/vypuETNC/lizyFmv
 HHsr7TFSCJXB+Ht+2+R4TpBHQpxneLYL0rd4qiRJJt0zLA39i+eJkR3qqWH/N99xY2z4uMrhXA4
 KBAxDunK7mY2QPlPODzj9EF8oWnIbfakaK/w0589Ue+6NVz36a9NoYaFWfNcN4YFbBSNw6NCd4Q
 z7Gp+HNDQsl0/SBywMA==
X-Proofpoint-GUID: AeFHYuWWLtHJEp2G4IdNmLYF4VC0faEc
X-Proofpoint-ORIG-GUID: AeFHYuWWLtHJEp2G4IdNmLYF4VC0faEc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_05,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160147
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265906-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BBA0146A0B
X-Rspamd-Action: no action

On 26-02-16 15:43:06, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the RPMH clocks present in Eliza SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> index 547729b1a8ee..cf46a6585174 100644
> --- a/drivers/clk/qcom/clk-rpmh.c
> +++ b/drivers/clk/qcom/clk-rpmh.c
> @@ -940,6 +940,25 @@ static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
>  	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
>  };
>  
> +static struct clk_hw *eliza_rpmh_clocks[] = {
> +	[RPMH_CXO_CLK]          = &clk_rpmh_bi_tcxo_div2.hw,
> +	[RPMH_CXO_CLK_A]        = &clk_rpmh_bi_tcxo_div2_ao.hw,
> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_clk6_a2.hw,
> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_clk6_a2_ao.hw,
> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_clk8_a2.hw,
> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_clk8_a2_ao.hw,
> +	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a.hw,
> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_ao.hw,
> +	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a.hw,
> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_ao.hw,
> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,

Actually, there seems to the rfclka4 and rfclka5 in cmd-db.

Will respin and add those.

