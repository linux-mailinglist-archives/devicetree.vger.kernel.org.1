Return-Path: <devicetree+bounces-273581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGAIM1MrsGl7gwIAu9opvQ
	(envelope-from <devicetree+bounces-273581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:31:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A37252078
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EFFF346681C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76DC0399369;
	Tue, 10 Mar 2026 14:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FahaEN7n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PjXm/Q8/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC9399352
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151977; cv=none; b=UdsR/7c7wVPSQF57wK/6oQrR8c0FhbUd9IXo4Jbzq1A+lDZdmQAwx2rq85xoGE9t4DCnniQftgXFiZ5vl46MrV3W72+1PdZ7e+zLaxDoPN2FVh3IxLGhhbUsOEuWbK187C00iaT5r3lmlg8qpQ94AHaCsmcGnOmf3oCijKhcx0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151977; c=relaxed/simple;
	bh=1FaIPFuWAfmVNzG9+OtQXpdcIagmdohXDgobkOvWmaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJLajlcn4+r6V4NCGumVY5oukELWiQVpZ7tE2LtNMjhGH7O+gXifUzz2F+n0xtRy95bNwMzsradrBeMRVxadJKjOeRaUt2m6fEQt9r6KtvhnSjb+iJfBELz/Lw3Dh/1Z/IfYAG75AXAzeWE9l3q+qc6LEbfPL9JJF1jgFwSMr5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FahaEN7n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PjXm/Q8/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaRJd3417078
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OqvWktqC6//V6Esd6CgK+Uq4ljtYPh/ZuwNGITPaTMo=; b=FahaEN7ngFKMRFZl
	etdudgxLWcSyWAqy9SPb/9EueWGgIiP1tySGYqNLoG73WEYSNCX9qxDFE0uzf1OY
	neMDEFMDMw7UyQm+2eQlRek0cjCopGNhk0xLK62K8AslpiV49P4j9IMDXvSxnkLc
	1NfTt6KQS+dd0R9BmE7ehywg/1m4uHTlheTe3Q5uYA9ETXFBtQ/uzMs4VBmeS/+l
	k8o4jGPEZixb0LHO4dgaX+bTGLIjxELLZ5olZ8a4ZOTygFYtB5ffBYc1lDzD7QtX
	PNDifgNrfuogc4stYiwZwsxcgpZeFdmbF+dEPguY7HYIDNuxEB/Uk0r7NDmUVcgO
	Y/pubw==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28mbk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:55 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94dd07e7d0eso1830839241.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151975; x=1773756775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OqvWktqC6//V6Esd6CgK+Uq4ljtYPh/ZuwNGITPaTMo=;
        b=PjXm/Q8/gIL4eKo6no6UhhN9rO7atQOHqmfIRUqV7AQUYUF/xlCpnCVKGRO9SI9AdZ
         UbXceXkx2UrNTymGpL5fIs0AyS1a6kl/WkpM06cJ0w/FD5ue9++VYXJJry6hd3391xfe
         qitoy8z0zrDWn95+eURVJcSd6g8WmfRIgk5Q8KlDXEIxAwUQE6rz6VaAhszYGlCDJ49K
         AsPDcvIh2e5Zm121CnbCcdqUK8+/aoFBGlZuOBficeFyS3M0+47ei4E9aojW6OpxRHrL
         UsUPDQ+0npX3fucwmILk8cdYuv49k8+rqvk8hd1+3MTaTrZ4i6WyShzpl7GWuLMItl/H
         +J8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151975; x=1773756775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OqvWktqC6//V6Esd6CgK+Uq4ljtYPh/ZuwNGITPaTMo=;
        b=snF94RJQmtk4BWzv7/FkevgdHcvpRmAcl6oZGd2Y/tL5jKx9yGDdwq6wWZtIlP+Ixu
         HsPbPd2GSw0L+eO8XMl7MlradQox25c0PLkel4MHR4Zq+Og9PDQRFMfFkuBgSk1QEoBZ
         8yEhf0Iw81xmZUc1+j8D88h6wqtnm2ZCBrZ60QEpJ5CkeYH2ReZ5rLXuIa9/IkIlzv7S
         B19+y7TBMypExDO4y4MzeTM72aBXW7H01WcW52iCnDTaPDt2vEhwX8vdyiU/8C0i0fE8
         cPdHK+wMGXRkwLoBBaWsQmhGB9hNvzm/vWw0IGdwMi5424nPWD1khq4ZaIIDiysVMsDH
         PkEw==
X-Forwarded-Encrypted: i=1; AJvYcCUcVnORHvzXoYCu9MDdnU6gL7gsbSnsN2rohH+jAxzaLqokXtWYcI8hWDFr2Wd5Kl1uNH+CgJAPGYLA@vger.kernel.org
X-Gm-Message-State: AOJu0YySOYAf2rMaTYRv03PTYKq+gApXtN2CNkFatnKu7UF6Sh6MXPt4
	1nmpgKyVZdXYosAVGuYRT+BAJ+rvv61rqVd4CJxdAf1HDY5Y6IYmfLueshFvvBHAU6VnF/ayVa3
	HDOOguUmDjmI06uo4teFxxMpSQVcXDRBvvfjZWvWAjGbHQSr5lU63JSgbSGWylu26
X-Gm-Gg: ATEYQzxBdagELy+7tHkpbnwpJ3p8wYdvNE+AKDosDW4xyeaiGcf1l/EWnkeshndCsll
	MnzqjNVJPw8X4TiJJOaNAGCe4yAl5GxMiOFqXNCQ2vlNanDW7DSaFoq+alRUhkUkIo0hy7bOtI7
	0o+w3nKAv6pqX2TK9so5seEQuds8OHsOuY0iRJMXP20x3CBtvX3r5lf6XbRzjFBcqmcKqxZXHbk
	qLo16hXTAiFDE+3N5xdeSV3XyrjLTwFfMp1GESq1kKWvwo+cDpJ1njluKDk2z00yo/TTjdtt4kv
	JbEawS4jt+Ryrnd9kvYKFlrunnN8xvDw7usU9XDp4DKRYfuIvryObD2D7dG0ootnFo67D1V7Axl
	KDGrtazr3DO1ylFEzuVpKqsSc9u1smti4ucoiky6qvISVzx4TP6PqQDSVTcACPfwx5uwSaN53CV
	Jzog4=
X-Received: by 2002:a05:6102:d92:b0:5ff:c0e8:d89a with SMTP id ada2fe7eead31-5ffe5ba4013mr2497933137.0.1773151974629;
        Tue, 10 Mar 2026 07:12:54 -0700 (PDT)
X-Received: by 2002:a05:6102:d92:b0:5ff:c0e8:d89a with SMTP id ada2fe7eead31-5ffe5ba4013mr2497898137.0.1773151973959;
        Tue, 10 Mar 2026 07:12:53 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm4317323a12.2.2026.03.10.07.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:52 -0700 (PDT)
Message-ID: <b5a9e78d-0458-417f-824b-a352e8b4c9e4@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/11] arm64: dts: qcom: kodiak: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-6-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-6-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b026e7 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: 0gC70KTxcIz_N3GhO5Cou-om7CLnglCp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX8mHgUq2YgSc0
 uByor0QhuB7MkOuRrH1+pkbIb/54ynk/IhQGS8Pw0y77LfzKTl7zEynzarZdVANcwtCzrbOFTss
 krMaF2zk2ODyu81h7yDvNCUjvdKNsbgD98Dvs1Q2KneFv/p3TAmvwDskf/ib0j+a7dGgBC2xuY3
 4Pp4r7wgZx31mmfAJbe2aYlsHVyqEfR/GXWj1HQETsDi7Sf/oOS3fI1zfCmm8hSPQAz74Yk2xc2
 j3WeB0OJN2aBZkwYK89X78outXartmvpG/OojkvPTMqYHKY057Xvcym7eXyIXBW+gaVxuOna2PE
 /TxpPwz6uuJSoy7Y0CAGH3N4ZFwzQ30sSl7GiN576U6PFjeLhrXSv4JvnX1AhCAGut96Nc/C9U/
 oETdriRuariGxtwl4MFngxD8qfW6cAfCkUwwbdSF6SPCJMmRk/8s6iKfW7hGF+1FwI4jLE1D/q6
 0LzQgodTyR2nPeYGtGg==
X-Proofpoint-GUID: 0gC70KTxcIz_N3GhO5Cou-om7CLnglCp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100124
X-Rspamd-Queue-Id: 78A37252078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273581-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
> GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
> kodiak.
> 
> Fixes: dfd5ee7b34bb7 ("arm64: dts: qcom: sc7280: Add inline crypto engine")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

