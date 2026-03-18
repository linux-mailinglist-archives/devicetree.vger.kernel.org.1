Return-Path: <devicetree+bounces-276967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EI5cFENOumlUUAIAu9opvQ
	(envelope-from <devicetree+bounces-276967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:03:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C532B6A72
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF7E13032CF1
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3807A36895A;
	Wed, 18 Mar 2026 07:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQ6J8wIA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YKEMNR5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E243C368277
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773817365; cv=none; b=Puyb/O0hTfPiP8/U367QSw7eQcTN60xC+egZ39Baoxz5XV1MtbapaoQ1BDTp9eZjSA7Kjh0sj10a9hKoeE3rrUM9i5MUzYRYGIMEU3Jm9maf0TyoEgI2V4oW0HqiXLXOtIaPRmXPqKXUWzbVGJ29l5snKlEgLwu9wtKK9VexFl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773817365; c=relaxed/simple;
	bh=i+AwOXTtWkfrSMKjirAmr1vwwWv0pMTyVChyb6WH33Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jqGw2wJtukSvLePgWcwHQoRy0ySTvTui3DZUhpri5xSXbjOtDxqjiH9ipJ3J/g1aJNZ/Y6KElY6rD7Pdl3Z2Lld0FRcAvzCYRR2mYFQyeddyoDu10/fUsyOJIQDgMcQYAVnKiAs+hBG2YUFTS2UJpuMlqTpAIoJgdP3yK+QEYG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQ6J8wIA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YKEMNR5B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I3UqJH1145979
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:02:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KdScftqO3c9m/7sOsNC2bhRy
	GM2+w6SbAEvCY63rSQo=; b=MQ6J8wIAMy6QUUhQ5Ief6ZxQSba+3nRU4fb3Xyl5
	1Ocd4DZaqHE8IFNSzKQHHZlF3xGQkP6BEoBPtR7gEMPVTljZtKdyZvVdzwt71TKr
	1MRNLhN7bbNFGRtpTtV9k/a8HjH5+J3z2y0UAyc8xS/sm+6ngEZhKMg7K0HViezq
	EKU0SWRGFH3EKP0syMfVVLqS1pANYoADxd6qYdTi6qgxKv7n4rWpGTr9Hv8qcCRs
	rpUxc9599w0R66wPx20/t1ihB5EV5rqlNHXmxZ3/nFMupCsZiM7wgMDvVhd/9psT
	Ixn8bsFAIuYOERc8c81GHyidDIlmmimyiXPZ2/B/J4N3nw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyak3tuax-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:02:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd91c0262fso350849185a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773817362; x=1774422162; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KdScftqO3c9m/7sOsNC2bhRyGM2+w6SbAEvCY63rSQo=;
        b=YKEMNR5BakKy0qycx1Liv6FEDkROLr8wMSVQ5fNYCMvaIIhAgFBEbtLvoZjKFaZByr
         peIRInDGXBZri2qkN1IxuHysZYj37sMAyr23/vCTa4Y5Q0/VMp7WF8pe5/v9neVf7qyQ
         2iy/u+n9MHrQyfs42RGT797r/sibeny+V8f001dOLZgCbph/1Znge/TMtTlenDrBzfpU
         7aDjE9cth02npvGAOqqS2JZRl9t2RopcRY1GyQZTCQU3IhkDBuOoxXGf+Zx2fhRvPDBJ
         efQBB0mRTtrkQcgniDlCqpTOuelL5cMdFaPfqNTObk+yFx/eUcrbDyYrkHm02KUbydhL
         eRug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773817362; x=1774422162;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KdScftqO3c9m/7sOsNC2bhRyGM2+w6SbAEvCY63rSQo=;
        b=Kmi0qreiXT0kjGsweSt4mgkEVa2tHmaNEBi8bzEkZOXGgRM8PyZr2gnvs12Z2tFgsz
         Qec/QTReDegJ/yoBH8f0FrjUdnVRvrJZrdARqVRfjF+Ym++Ig0x5ga0H9A8S86X7d/Bj
         zXZgH/vZYYwhNH1iUG193fUkiSr4tVtLPVvsx+5WnopiflNoIMSM6n/AgXro+UQL8iU6
         34Ud2fDMzUsF6J0iK5p41W/E1N3WBZnJtA4tfm/XECijfQZ/UI2w2gCOt6NfqnwZivaq
         rDVog+t4wcuyRqVbrDGD+PT1LlmPjezX00y1SOjDolOKW/q8iVYiw+8tM76SabmHTS3i
         jGdw==
X-Forwarded-Encrypted: i=1; AJvYcCVFPz8Ox21dYVKWnuWrypImk3RaupnrdEkSeRe+d+a9gt5ZTCkd8KQt9M+pYMZlXvj2shHp3f8Je7ba@vger.kernel.org
X-Gm-Message-State: AOJu0YyszXNYAMYMBLjZNfEa5/t25mWm0A2e5QrsNzKCHHyl6l5zOsyK
	FPb/atigogGJgJc5jLHeBvZW0ppGl5Q1Gvg5vcL9cP5qeJPGXIN3AAChVWlA28RC8ThGVwNumGJ
	C5sAYCRDSvYzPDLvdyN/7JsxUVFKIUvddqtqzQ1Fj93TBfRT+k5TptIChaWzBUhxL
X-Gm-Gg: ATEYQzyXkfg8OlJ+jdkGNDmqAv5/6bDsN7uJp2Gp5LWaWREMesqAbMMFQmT3Ysaq6I8
	upbYtJcui/OxS1xYy5auXuCKq0uE6HSZdQYxBUgIuMeXaFrgxFlZ1fI2VdwuNiGW7o9MqOWEXY2
	yv1DH1s+VrusgS8BD+xGjW2QB/Ef6H8UjprvfTcD81KJVwtG1pwuQdW6bu1p1axpboCrKOnOK9D
	5BDU/Zb4jULlMfKjAecRIkgwOda0Kbo+gn3W4Y9TTtER+vRRnWuqMKb1BMsinF4Dn79j81qjYJ1
	zumcVNKhccP6i5Z+tVT4/wM6vqJ5CTo/abCVC0hLnD9gBMvDkdj0pKnbLvua9G7oUrtMffSw/uO
	UgjvZqZz9ZTLixnQhAJE5tERmFWnsZTCmATkugf7Qf69wPPBcDgV3VuvrpqDVr2JnnPPCbcK380
	/pFneOW2JW5grHONvHGjC/2mm2vKawPf0xK8I=
X-Received: by 2002:a05:620a:17ac:b0:8cd:b342:14ef with SMTP id af79cd13be357-8cfad2305f0mr320450285a.7.1773817362122;
        Wed, 18 Mar 2026 00:02:42 -0700 (PDT)
X-Received: by 2002:a05:620a:17ac:b0:8cd:b342:14ef with SMTP id af79cd13be357-8cfad2305f0mr320447185a.7.1773817361606;
        Wed, 18 Mar 2026 00:02:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd54dbf75sm3764491fa.37.2026.03.18.00.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:02:40 -0700 (PDT)
Date: Wed, 18 Mar 2026 09:02:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm8650: correct Iris corners for
 the MXC rail
Message-ID: <scsvyc7vb3lnk6mktwltdac5bkynvrzd4jrx7dwceeesbqnhrh@clz7d5e3igkk>
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-5-32a393c25dda@oss.qualcomm.com>
 <8dd814c0-039e-c8aa-2588-9c1edbadaf47@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8dd814c0-039e-c8aa-2588-9c1edbadaf47@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=A7Zh/qWG c=1 sm=1 tr=0 ts=69ba4e13 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=5EybdfDisuMDc0MB74oA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: KZXjre7zjQ96AA5ZOXS3GuY8PubeyhMt
X-Proofpoint-ORIG-GUID: KZXjre7zjQ96AA5ZOXS3GuY8PubeyhMt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA1OCBTYWx0ZWRfX6pPMlwnOn0Gd
 LiAvrz/w3ZEkrSr6tZnwtuGdPYidA2QUzTKnzmGfIqZg0MTzmEaD6jzorbnOwIZfHHbHtmXJUcP
 rkjIj4cHQqOZ0x2BgHOXrsn7qwKe6c1VFVCJd4ErRhHJ8CaQzdeg7dn+PPD0ek0DKM2ofXmERLm
 TE6oB3l1gv1pzVi8Qzy3NF8SjzuiGM6DNTkvyhBCutx7bB+vEkI5QNJ4YWL3cvB1M6IDbuI5RLg
 S9yV3XT8pQDdnAaOVHpignCCMQcwR+A2SJbMruN/NsMaFHhsG7a3d/tztyzyDaxfkBeBFzTkNXo
 rSNGeRvpxAL31/faOkynE2b74cdp40z8Awho8U4pADp6C5FrmEhPRL76fyj1wiDM/e81ADK5lny
 zT+vv6taZLT6AOFv/6zEDj79B+UW9e8sJSRPkPd0KuVfdQe9SM2cK/rALUOwCLb6zCP6w9aK/aN
 AhjU0HwUgUOQwu3e9tQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180058
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276967-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A3C532B6A72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 10:54:07AM +0530, Dikshita Agarwal wrote:
> 
> 
> On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> > The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> > match the PLL corners on the MXC rail. Correct the performance corners
> > for the MXC rail following the PLL documentation.
> > 
> > Fixes: 56cf5ad39a55 ("arm64: dts: qcom: sm8650: add iris DT node")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > index 357e43b90740..9437360ea215 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> > @@ -5236,13 +5236,13 @@ opp-196000000 {
> >  
> >  				opp-300000000 {
> >  					opp-hz = /bits/ 64 <300000000>;
> 
> I see in the document that this level value should be 280000000, could you
> pls check and update accordingly.

I cross-checked, the table for SM8650 lists 300 MHz here.

> 
> > -					required-opps = <&rpmhpd_opp_low_svs>,
> > +					required-opps = <&rpmhpd_opp_svs>,
> >  							<&rpmhpd_opp_low_svs>;
> >  				};
> >  
> >  				opp-380000000 {
> >  					opp-hz = /bits/ 64 <380000000>;
> > -					required-opps = <&rpmhpd_opp_svs>,
> > +					required-opps = <&rpmhpd_opp_svs_l1>,
> >  							<&rpmhpd_opp_svs>;
> >  				};
> >  
> > @@ -5254,13 +5254,13 @@ opp-435000000 {
> >  
> >  				opp-480000000 {
> >  					opp-hz = /bits/ 64 <480000000>;
> > -					required-opps = <&rpmhpd_opp_nom>,
> > +					required-opps = <&rpmhpd_opp_svs_l1>,
> >  							<&rpmhpd_opp_nom>;
> >  				};
> >  
> >  				opp-533333334 {
> >  					opp-hz = /bits/ 64 <533333334>;
> > -					required-opps = <&rpmhpd_opp_turbo>,
> > +					required-opps = <&rpmhpd_opp_svs_l1>,
> >  							<&rpmhpd_opp_turbo>;
> >  				};
> >  			};
> > 
> 
> with above comment addressed.
> 
> Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> 
> Thanks,
> Dikshita

-- 
With best wishes
Dmitry

