Return-Path: <devicetree+bounces-274593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOPgEfC6smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF31A2724B8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 772C13014FFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BEB23BCED;
	Thu, 12 Mar 2026 13:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E4xWqZef";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a+ngo2Tu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6B83C5532
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320867; cv=none; b=d/7k+3JCpqxxlkk82a7xH3lhqbaSgu2kX7QxjEG1L9Vnc7t4YEMAo/3ME3MnQYTS9YSkcSnxoRujD1Ycr+CX8mLFxChMbC1JBeFUZslgEy45W+dONB6J/zMFNHRb2bY4DuGO3tkOSPTzWuvMMe2PycEDonQnRqm6f4odWH+S4eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320867; c=relaxed/simple;
	bh=elyxdZ26Ie3QG+vvuY8Lixp3JeiukSxqoH3TtyEJ8/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSOGLbrdbxXfgiFN17ZCnZigXMxlJO4C095IV6ccfHbOp35qX4NNicinu8ABBbjtCnxqqrq69AxFH1qNo/94nSmKwowigU+80aQnfB12c0w+vYeFgwbg+qnEE2f0tVWfAYD0z2pjVGGkzp4ZCa7C1VL6xWlTjfGtW3M8+wfchJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E4xWqZef; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a+ngo2Tu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CA0Nqv4132664
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z29ZXVvXWjVy6lySmAsC3Ftw
	rE6enMyGbdJ+YB+Ns1o=; b=E4xWqZefbWwmko5msq1ApTz+ryduTfTZwgheLvw/
	/xpHaILI9qivTQQ3V2forgnkLOvguib+nGiFT06PMa8r0ZfU23JkfrJSFJ8U2+Z3
	hq5w3l3sbbIiYT8uOE2nutCu/1vzQHOUBB1tK2Frf4j13bIX+c54V3IuySECACx2
	UWsiBMaTSTMqzoZ9E38t+mZkEoOP23To9J78W7B9joOWIasXaIxVsTd4wm6Tk4tT
	+WBj0VPrr9Cr+eM2RIcG3LOEWXyAMalsb/oR+tE9J2YCcX7mn9Wcgas4UtpIuhC/
	08NAJpRrXbdVpXAmaGpWINd/1hapd2USKLBMqoJOFwQlhg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w24qm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509181cc6ebso13323851cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773320863; x=1773925663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z29ZXVvXWjVy6lySmAsC3FtwrE6enMyGbdJ+YB+Ns1o=;
        b=a+ngo2TuYv5Cw2y3RaUoI9OGB0wKJWWtZMBWqvNfKblnysNGnG17/YTp1PCg7cO7+K
         qaZSa3nYwoIaop7r4ge1NCGKrJxjwCZrUwLPMy6WIawgAdceOONsFzg5VVWjK9M5v5ug
         zhlt6AFYZj1FMxg4Lvi9GEbeoVyEz6ZzcfbwroQa6VkVDFOn+i2hnplX2GqrfWHclA6S
         oqFUjJJCqFRISxPwSFgbF0HfwEu15lcugo4rhYKnwT0bqQIZrfsWTIBYZ4gfemzaH3tE
         wJbh14a3oB8fTAYNNluW0GP3nt4+l2J/Q8uWfvCc7wqp521cEfFHb0Y8TiRMCnlZGJaU
         XJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773320863; x=1773925663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z29ZXVvXWjVy6lySmAsC3FtwrE6enMyGbdJ+YB+Ns1o=;
        b=Gf6+fnYky9SoFmWMNa1FCIrD4zJBaGMCiEW0lqlY0XLI6K2fG61y5TS+GS/sU62nd4
         D8IgJ/rhh83cic1CQtP0PQFFv2WSUGEWQ23OlchJ15tMP7+Ulhke9jhgJlkCx0tQesWX
         O7SKYqNQElHpCD0vXy7hV0+sv/6AJvIgBlDt6ZLegzuxaeTqUEEzH/ycEJv+JuhwF9Nu
         JTc+HhMO1VJ5OfWEJOD+8MNYzo8vnvy47G51iO/8+OVVHAyLaAsYfXp1dsPhKCHfR/ho
         xGR7Uq3OyuJVOBx91wWhOEo9rs8ITDY5+waOYCPsnoB9tdh45N8V8j0AgNzYyR4xC+xG
         j9pg==
X-Forwarded-Encrypted: i=1; AJvYcCU68Kd5UeyuPtx9hwRY23aq3cJzKQt/+5D79MkLQgolCF680hqYPTxyfyofHNqFDaNhw5h4T2M5IYTZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwtOXPtfU7PL7z8NQgz+tODMagZZcKRv8UpD7iq6tYapiLSv6zq
	RPu0eGURhc7NmdCrwHONe0s8cNDiQBzI0s9WIo10AQU8NjBUawxPbY8LJlLpo1S5YrZh8Uv51wr
	m77XmtldXoYR/aMqbmaqqiPoAieB9VHEVDx97vY2h8AJnUNj02+ESCE7++iF9uNon
X-Gm-Gg: ATEYQzyM8dbBrLIWIOwM+8/Fr8uoxZtPGrdaJsqEjo26pZSLcEnAomWat8BtAvZ490E
	rP2oGzqnWJUDfpWDpVxTyhB4i2mvG2rftxM9ndCzvxDafjrIuaxTrzYmSvhtsj4XdAMpCzuAmME
	kuPcTii+coupGZEIEz/8q1LTWBSD1+/DVJN41ZrSaG7RqSNeoTIfd2735/jL6Nq+0LX5aN3SguJ
	yULQXdHwGa29Y5+x4bi58IzRI/9L5UVNePmSH/4cBXLX44YN14cBT/pi3HzgQKD9gFZ83e7TgFR
	kGU1W8UD27usj+asK+V360Y+qagiZdhOmFSk8tyZFFhEVGK5TnjrV+8tjaPYdh8v87sqsg3Sh5P
	y0EozmB2PkXVFqquaUAlrVDX4KdPAedVhWA==
X-Received: by 2002:a05:622a:1827:b0:501:51fb:622c with SMTP id d75a77b69052e-5093a1b3a76mr77940001cf.37.1773320863028;
        Thu, 12 Mar 2026 06:07:43 -0700 (PDT)
X-Received: by 2002:a05:622a:1827:b0:501:51fb:622c with SMTP id d75a77b69052e-5093a1b3a76mr77939021cf.37.1773320862128;
        Thu, 12 Mar 2026 06:07:42 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2186e3sm9454837f8f.26.2026.03.12.06.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:07:41 -0700 (PDT)
Date: Thu, 12 Mar 2026 15:07:39 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Zijun Hu <zijun.hu@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable WLAN and Bluetooth
Message-ID: <dabwepjvnw5uv7newvdzokkoo7her6m6xrlkli2mc4k6oqxqah@decbrmlb4b4o>
References: <20260309-glymur-dts-crd-enable-bt-wlan-v1-1-3badbddd5439@oss.qualcomm.com>
 <126b0f41-90e0-4284-ad79-082a61c99f4e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <126b0f41-90e0-4284-ad79-082a61c99f4e@oss.qualcomm.com>
X-Proofpoint-GUID: Lriu16wPvTAm1KhPs-1jTfXLjrItkzkg
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b2baa0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=JJmx-g0SUAWKQMqOxHAA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Lriu16wPvTAm1KhPs-1jTfXLjrItkzkg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwNCBTYWx0ZWRfX1lkon4pJR1Vn
 xjGRgZtPPxzERxf+o47cd6lLtdD6zIqyq4fymXahXxkNy+2yC6oEygx6qUXI1KW9Y6M4f4zocE9
 FAJKdMBguQxWROM9tZWaGkFBaHsi+wiMhqMvV5RmdyDsvZUgD9c2qry3A0PIwQ768CVixuIE35Q
 c4K5vvoWaMWi2PdwcmzXHZyjAg049MVZxhinJIgc6tBNhru9a/SgcMOaVYdrQLs9YicecenfiO+
 qq07g3Dvz/NxvWbgXiS4TDfIpJ6qNORevF4OKDISAeEHLWOtLs2eZU80OG8wqOMSGIFGzVOIxld
 DGcev9yqQjI/vcOBQ6LTRtvT9AVkuYEe+8CQiROgzRKzGy1AqDi0Mw1+M+ZRPc+C/KSJK5wdBJI
 3kJ/vDbF3ZHnv8641PeZoJQZ4BiIPp/MEtDdVsQBAViSKHlUb4NoFwPEkv1JpbqDjgNpCdJSp28
 NLeESkt+3eBlmJ5eFOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120104
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274593-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DF31A2724B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-10 15:27:25, Zijun Hu wrote:
> On 3/10/2026 1:33 AM, Abel Vesa wrote:
> > The Glymur CRD features a WCN7850 WLAN and Bluetooth combo chip.
> 
> a WCN7850 M.2 WiFi bluetooth combo card.

Will fix.

> 
> > 
> > So describe both the 0.9V and the 3.3V regulators, then WCN7850 PMU and
> > the PCIe WLAN and the UART Bluetooth nodes.
> > 
> > This enables WLAN and Bluetooth functionality on the CRD.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 119 ++++++++++++++++++++++++++++++--
> >  1 file changed, 113 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > index 0de7d35e1148..bcee513e477b 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > @@ -190,17 +190,27 @@ vreg_nvmesec: regulator-nvmesec {
> >  		regulator-boot-on;
> >  	};
> >  

[...]

> > +
> > +	wcn7850-pmu {
> > +		compatible = "qcom,wcn7850-pmu";
> > +
> > +		vdd-supply = <&vreg_wcn_0p95>;
> > +		vddio-supply = <&vreg_l15b_e0_1p8>;
> > +		vddio1p2-supply = <&vreg_l18b_e0_1p2>;
> 
> may remove vddio1p2-supply since it does NOT use 1.2v IO power supply

Will drop.

Thanks for reviewing.

