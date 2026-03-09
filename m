Return-Path: <devicetree+bounces-273140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMwAFsM7r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:29:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4A5241AE9
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9CEB6302CD16
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19FA366823;
	Mon,  9 Mar 2026 21:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YZEQWN0M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jmy3vfli"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BAE36214F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091776; cv=none; b=jSNyOD8Ea/rNgrs7NOmusFerrYE16Xi+HSs+mjRgwYLA/anGGnFdobKUNffV0Epi6W6xQfS5IviD3CE/ThKnOkDcNDM/a3IV0JxxR0AzCUw3nPe3Wuj0KB3vce4gzh0u3WZy6KTO9peOffSA+BzfWbVSh8C2856NMBQ/gc7VBX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091776; c=relaxed/simple;
	bh=ljgphUR9X1Vh/izCvxWX2SOm8Ub0mGUKyBUyj9XdvQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B0qOFTArQ+8suEiDdad7E422hJWQLHfbtImGAd8Gyjr8RL3zQsJtrH4+HzzNds5ja9/XzSxB50VyeumJK3Y14WG7SFtlXLL69OtNqz80E5xG/+T2GE3Chr0s6cc4UnH7rJsJYmJs9sHMf1Kin1BQgxseM53/CXr+qlP6tQQo/yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YZEQWN0M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jmy3vfli; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCFYk1212209
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kvjt/VCxNbUheh5qilxfrJio
	aIJ8oJ2VYpYhdJuclHg=; b=YZEQWN0M63zvUPm+FX153TKEb/xjOgWrFZI7JpsE
	vN+Tzdqr7n4afH81+XElJ/vwC5p7duIOmUlqNgnJ7blt0pzXb7Vg7Sx04MeiaPnA
	n3BMaSYdXlm+Ul+qppUNk3hqsUw9uIzho8JDG6uj8hls42Ubg9icmwDurWUpb11G
	neUQu+wjvqX7+Elxu8HkvJ/EzNQbNHx5DkphhsfHYIrc10q2NV3B58OgQAkyg0HD
	PwuFE1bPHP/sbGeK6rmu29T/XwfRyvAV5V1X1E1xHMdqLMY2LHUT3xrtTfnncvMX
	Mvhlorb0+m/QB4cASC6tJlXPLm670axxe2F2IITNQU/pkw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkhs43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:29:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd8b37d4b2so812999885a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773091774; x=1773696574; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kvjt/VCxNbUheh5qilxfrJioaIJ8oJ2VYpYhdJuclHg=;
        b=Jmy3vflimcvT+7f1uGLVAFDV9g1QMUISV0SzzyGkv3NPyJhjjDW6Q8RaCKHmWo6BoZ
         i1i7pb0jwK9wSUTgTzSfFfakIi/owe3NTNj66yXQf8SFEJc43a62oIZbM/EFAwY01Vk7
         c1gQ5UC535jw9QPuzDSQupJ2ehYAiXdeseQJzh5u2YJhrbKPLWmaTGcKKvEENH781RUt
         Tma8JwWPy4YMQArY+FB387VilmeeMNfl3kv7Ktwsjv5F2m0Shzvie9baiSPRQcXfXbWy
         PmIC7kAhwK+yADIwoNjlLXWsqRog+OMAVZA2zzoyCmp13VzNrwBXt19xTkCmuoYU5LXT
         aHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773091774; x=1773696574;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kvjt/VCxNbUheh5qilxfrJioaIJ8oJ2VYpYhdJuclHg=;
        b=osiCINZvZYCZRNkqwTICw3dmMN7ReYJ3tFJvnOKk2XyE2wvZ38aDtHSuPDCjT/5ZDL
         FwEMnaBaqKR0Dvdo6Mzd3lo5Ws2LCSdZLpdfXeokRRLAy801+PJnkPiJDw6L34AtF6df
         +1UAisUM+oFtYiD33+l7UWHlGBjSdfYY2KLPOv0HSJjTF32c+eDZOg9tyVaT3OWGMAop
         NVc4SHKCSrVQ7HryXjgewmMXtIwxEpoU/mUs3UwiukexPljdRA5SDuLrngCmcyh7OPqh
         HRSS6jGP0va9wVH4NQVKJYJbKLse3o+o+jSA3P+YyTq4zoNmyTZZVNOj4qE5x3PE/qQf
         j4MA==
X-Forwarded-Encrypted: i=1; AJvYcCWaNfUIAATelMpWjGz3Z9Oe2WlkTwWhQn/jYlzKSDElNVH6GgDYxRC4KHlFvjoXAxfQeMSvFFeZ6ZC6@vger.kernel.org
X-Gm-Message-State: AOJu0YwRYFi9ZehmiNksQDtF8XLt1CMFXuIfwiPpx3kc7wyLHQOF/pqB
	0d+zy9Peuya3qZEBGYw60IkfBpj26jRRlQ6C1d8QBEY91uEyxx0sig3Xdmk4n9yHUtsW25WVbh+
	CnQv7cSrUfGfRVccKugqV75uwychDlKGigNuSOzbHrxK/QSANyW4ewPgYDajHvDNs
X-Gm-Gg: ATEYQzzFN9iSZipRJhFFl42Seuzadv96gs4+4I0AP5OR6/pHQ9rY0QSvtlczM8Il+9H
	Ccw+yCyqMxn5+63H0Oxcs2/BFDIr4UnRO6kdRSdL2KN2CkBjqqWuEB3sKhSF8afKUGSmFIjkkJl
	zzzruWBsfoPSgOMfm/A6AZD81G9zn+i94Y9FjLFsUHuYrDRVNYlxObxNZxFrTRSiIKoI3IhJ/ha
	S/fhEu12ZJH8RBQx8+Z457Ml6i92U3tNN+oAfVdaO1ZQe/yKS+BaWCkhjHRlnZjt7gxaKhiabLG
	hnptC3afWZdyrEFTohunnIWn+bK7WTEUyQY8kMW3xYNgOoNyatctOgNPtWYkZQjHniC8BpU+RHZ
	uAXc8BcqcFu7kx7nWI2muhpKVMACviM1qE5Wwf/O3O3oNwYvILfHBRegtHno+NgCT6lolRHimK4
	HQZ5fFq+dV/8yD/4MnHUN5B1itRMSEpiCTdr0=
X-Received: by 2002:a05:620a:480c:b0:8b2:7536:bd2c with SMTP id af79cd13be357-8cd6d52fe57mr1447415685a.78.1773091773769;
        Mon, 09 Mar 2026 14:29:33 -0700 (PDT)
X-Received: by 2002:a05:620a:480c:b0:8b2:7536:bd2c with SMTP id af79cd13be357-8cd6d52fe57mr1447413285a.78.1773091773309;
        Mon, 09 Mar 2026 14:29:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d072365sm1487521fa.40.2026.03.09.14.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:29:32 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:29:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: glymur: Tie up the CX power domain
 to GCC
Message-ID: <cm4wf6igasfsxvk56nirrjjrrri7bodyxuzuutqqgj3qvfz5xx@nblooxxxfobr>
References: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
 <20260309-glymur-fix-gcc-cx-scaling-v1-3-f682c82f116f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v1-3-f682c82f116f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69af3bbe cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=XFCnTzhwHPFgJtnojrQA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: WUMI5NRwVVnnSC0dDFZLo2ORId4Ot-Fq
X-Proofpoint-GUID: WUMI5NRwVVnnSC0dDFZLo2ORId4Ot-Fq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE5MSBTYWx0ZWRfX8aNbYur7AtJX
 bEX7i628xguWxhPbss3rtRhBl/oZkSsP9h6yPqwcsSiOFlJZvPVD5McAAIcnLkb/7GUsgxLqsHo
 hkYIIbO1tXSmdVsSdHWCFIV5xWUIrfOfFl8Pa0nEgUdQcfYwDwzE2ls45gM/lWBfbvWKvkHOihB
 3W/uFCW+o2Fzq5+wKWx0eMnGr0fQJYsPO1hDDUFvGl3VV912njFQR4TtZf5e63xAtmxSntdjoiO
 8m1xrQyXQkH6fab/sAizEGoj1UI8HTbP2UIxs/49p2GkNqZyoAnMgdGijw4gKLJJM0jxduQwCzc
 8uhS+sEVl8p0g5hzMLso0cNPBYZYrofIlDe9GqJYQawNwa1LKi6BkZ5W3qX0AU06S8uhMpbaKtj
 MZKy0f1PGDiPK+T43Q3xdin3V/IOyfTgwbhC4VdVGJ3fHsEQ8qtbwfi5Icc73Otkdpfq3ldgd0k
 0dfskWHOQUFk2mbSJyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090191
X-Rspamd-Queue-Id: BB4A5241AE9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.12.53.0:email,0.1.134.160:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 12:06:19PM +0200, Abel Vesa wrote:
> It has been concluded off-list that the Global Clock Controller needs to
> scale the RPMh CX power domain, otherwise some of the subsystems might
> crash or be unstable. So adding the RPMh CX power domain to the clock
> controller which will result in all GDSCs being parented by CX. This way,
> the vote from the consumers of each GDSC will trickle all the way to CX.
> 
> So add the power domain and Make sure the required OPP is nominal.

WHy?

> 
> Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e269cec7942c..2d1ffbf53730 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -764,6 +764,8 @@ gcc: clock-controller@100000 {
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			required-opps = <&rpmhpd_opp_nom>;
>  		};
>  
>  		gpi_dma2: dma-controller@800000 {
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

