Return-Path: <devicetree+bounces-278134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N/+FQ8NvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:02:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0166E2D7AB3
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58014302A2DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D15375AA0;
	Fri, 20 Mar 2026 08:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K2Nf+c1f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CdLd7mOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AAE310777
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773997044; cv=none; b=mw2F6yJu9ZpFSF7Re6eW4h6LvrTBrubQhyTaVwIeB/s0+2CHbOVgpvDNOH4AmGRvG4al3gaTKFEcIMdOBprxT9M7kkOI4sN2OaxyJbfMog5UtUwVGPSY4Twy11m/rmTMXTvoKUZTEr7bASp+ofxXbQ8nfhLvp0aBga6bA90/oM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773997044; c=relaxed/simple;
	bh=0eVn9PlV0DVisI0VOhMhn398u08OP/GTFsHjPBGJEa0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VWj2Dfa6HhSxdjDkBleSuIPzhQFgjFaDVyf3v/RexfQFQ9Zbo2o/7zlC9ZffRf+L3/917Ifv3RB6s9QqucJvi92l70uK70RcN7AkIzR6S9+AMPxPVnkSKPInsD95FG5Xn7ipRJeCgb1TUySq66iIU4VlXrBJge/m7vzyOaLVeSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K2Nf+c1f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CdLd7mOE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2Y9bI4079064
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rBnbaYgxAav7MVcCTEesQ+9H
	mlbuytA+j7U0xxuFY8Q=; b=K2Nf+c1fm2H0mNfCKqtUSy1FOYrxJMPApdVXDJpz
	PY6on8DtwyVuFno6T4iFkuA4MHGzG4Fp7nBtv/dyLgaWhyHOCOruNfjXMONads7K
	kbPplWyKFNApAdeQysropcMACcJ1rBcYPKJHGf7Cq/b1ZM0uO1AOsIPCH/VvDS+p
	g05rGM4dpgyYdKnWseTXB79qxtKG0DX+5/S6zXOPzwv/E1VNwtmld0x1Be4f6rnU
	Xalmt8sD/X34L7rKunJrT9kkFle5UoodIqT73l0BIWx8vrQ7UVyPUFs3ozSVWNdD
	ognVleEqgcXa34GaOEregZHaiynsdKpV6zG/iw3azu3K7g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0akxmg2f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:57:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50b4031b86dso9311671cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773997041; x=1774601841; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rBnbaYgxAav7MVcCTEesQ+9HmlbuytA+j7U0xxuFY8Q=;
        b=CdLd7mOEGPB0ENcESiw7hy58xd/jzSw/v5dnBhpmFLJhii8DvT6ixJm/3uub/tCkpk
         m6cyJSWd5rbevzNl/wq/Acea3WookqPA1xIwHK72fc8Mk4NMgeYi9JtVTNk46V60PhyL
         HomlFE5lJa12D6IyfE+ZX8rynVQi0Zk0BvKW+Jq1NeJKvst3oEw6HMySiyoC7qFdb10g
         VBVfzZ/2qeg8jnXH5iZAsasOQEcGP1/rkeHioZkHZOj1RX+fjw/Kp0c0j8a/SfsHeYYm
         02L1HqbGKXuOf3LukoE52X45Hxlp5lKoe2t4UjamhWUErjUup+SvfPCewNm4s+7H+Fdr
         nVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773997041; x=1774601841;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBnbaYgxAav7MVcCTEesQ+9HmlbuytA+j7U0xxuFY8Q=;
        b=pTkXW81LdCVNvQwR3JXDuHhXPWt44j5mowuWHsEM5htHDVh5PSN+7LHZH87fzC3t7d
         HvcxAFgaw27IFEZCIylyV07+CKyLP7fF1OrWxXASUnYjCYEYLkD0FmRd9a4ogOkKBbpT
         tmZAmMszygjgMOsuK2wB01EzTJ610t46PnH7zzUP3IXUKTaiOjukVWlyikWW7HHCB3v8
         Eg+73LpgBECjHei7o2K6GzVDbYvWhBz7yYdFDP/nvqwrEYvuzNvfnaA/Cji9RgiUTP+J
         YfVeB2wk3p8uYBCHDhEfleKG6x62vqCo21Eo7GmAono5dj3uEFim0e8841jIaGz0kN6z
         Bnqg==
X-Forwarded-Encrypted: i=1; AJvYcCUYue1RLmvK/RrI7U1kyRLzUZ83LPIEZngcrhsgiKmEB7vhdL81G+uLbxOSRlCKRxPaRw+Yll3HQ4Be@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8c6p049ptguidS22yFGfRpgb8KXRohO5S+qCEGIw2tWqAjPgP
	9AthEjUOl2cnda7MIYpWqshaTrPLciTrOylgneHmEpnIpalqrJ0A92ZmOtGtk19CW7g+fmNPG80
	/x+TmRRqwUC4BQfPhEvG2nSHxn/rZTI6MFvkVGFWjxjJfzNc98jSL5KBFlyMLUOz7
X-Gm-Gg: ATEYQzzLoRSEO0TAjZUSNUQs7SAae0S/lb2seVES9oTcAjsC0xdE68vl8IwbTwMtliR
	Tt7/eEp52JQ/cFJPg5ciPwry1Q718wuNbAmIzUrWQGFILP07b7/pt0PCqSnsQnRW7DLOewJO69f
	DXOuLEtbypZDRMB+UEi0bWjT+9uLJz81yT2qHTMBt0YoUmXl5xdYP4ukrH9w8i1Z1rqc/3NNLAN
	jkq7g0yvjyri8opa0RQib9Av4t/wpWu/6GypSYBOGszsXZzJZiVO6owNfYfuPdIWtyIY6guG/VZ
	9jmfFa5Nk2KZuuXK5RSHJnw+y9x8edJUlWXOh6FD6ztOyu4YHw8oyjn2AcceskD6NshPaJiasq8
	nMMo0v7Lx2L+6gKkbqMFVqIbXszmJWTOpRw==
X-Received: by 2002:a05:622a:728a:b0:509:1be:901e with SMTP id d75a77b69052e-50b37568471mr22479811cf.53.1773997041040;
        Fri, 20 Mar 2026 01:57:21 -0700 (PDT)
X-Received: by 2002:a05:622a:728a:b0:509:1be:901e with SMTP id d75a77b69052e-50b37568471mr22479601cf.53.1773997040458;
        Fri, 20 Mar 2026 01:57:20 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b6425eeb4sm4680107f8f.0.2026.03.20.01.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:57:19 -0700 (PDT)
Date: Fri, 20 Mar 2026 10:57:17 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <ophmftetelsmelaasdddans34xzvy5htxpphvsowasp2eatt75@gy7q7pv4swjr>
References: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v5-1-4a440594348b@oss.qualcomm.com>
 <funq3yjordebprhusdkkapw5m4fuqpavhyeguoo7tdffv2ebub@ozh5c7a3py6f>
 <pnd7eeijf5cmo7nmydsd7bvuxhhqbkup6xv2fgpb5gfwqyfnf3@dfr44uwneph7>
 <jpnjqvaezrqv7l24dotzbyz2s7scyltlhn7xhwtb4akkrggkyk@5epol7lyk6wm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jpnjqvaezrqv7l24dotzbyz2s7scyltlhn7xhwtb4akkrggkyk@5epol7lyk6wm>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA2OCBTYWx0ZWRfX1WmmPmGOPVJG
 ueKbF9Fwkhrizr2oxRqHpXqvquPHTpBqlmkC9CoFH1wUKuH9NksqK0ug1vibB+N92g8h6cUWEX+
 lqqGWakLbn9/FooB/xgM4YnsvJ/9ESWgXUWHGkkLJITAXjycvsAf9gtpLnLnhBZFc0JrGgBuIgW
 CoaTb3FMwoWrUOerTpvNQbvx6pNYv08hoGQde03vZeDeCP1UZ05i+wegeJazhKRGCoIerGz5Fvr
 ppFtgUpvRns0lu08hjRg8lZP6O12e+6lods7m+FdmquTFheDlovePnvWfQe7CxPWCbal50bMML8
 0sXm+Q4ENU+sa3yJR6XI5jrY1daL0Npi8gzvHTD6XgbnIA8tTKxLeXj/+XsE1GFTbzAZAEcKJ4r
 +smtDJElTA5BiNMfWDXJG10IiupLncN1J1kIvj2AD5rFLQNWTrRNKHfDNRFY3N172ZSv+3iZEtc
 y8Ja+o5HIxCN9q0XDgQ==
X-Proofpoint-GUID: psvdOl1sIQK18yr43DJD8MLEWzrJr-HN
X-Authority-Analysis: v=2.4 cv=ZeMQ98VA c=1 sm=1 tr=0 ts=69bd0bf1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=8N1ySFuS7BdRKEUra64A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: psvdOl1sIQK18yr43DJD8MLEWzrJr-HN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603200068
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-278134-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[dmitry.baryshkov.oss.qualcomm.com:query timed out];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0166E2D7AB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-20 01:52:06, Dmitry Baryshkov wrote:
> On Thu, Mar 19, 2026 at 11:11:18PM +0200, Abel Vesa wrote:
> > On 26-03-19 21:49:07, Dmitry Baryshkov wrote:
> > > On Thu, Mar 19, 2026 at 05:30:48PM +0200, Abel Vesa wrote:
> > > > On CRD, the keyboard, trackpad and touchscreen are connected over I2C
> > > > and all share a 3.3V regulator.
> > > > 
> > > > So describe the regulator and each input device along with their
> > > > pinctrl states.
> > > > 
> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > > ---
> > > > Changes in v5:
> > > > - Since this depends on Displat DT patchset and since that one
> > > >   had to be respun in order to drop the non-merging phy patch
> > > >   dependency, this one had to be respun as well so that the dependency
> > > >   tree is correct.
> > > 
> > > Where do the dependencies come from? Would it be easier to merge this
> > > one first? Or are there overlapping supplies?
> > 
> > The USB and DT patchsets were on the list first, so it makes sense to be
> > merged first. If this one was to be merged first, the other two would
> > have to be reworked due to conflicts. Also this is the order in which the
> > support was brought up. Also, keyboard, trackpad and touchscreen don't
> > really make sense without display.
> 
> Well, up to you. Let's hope that there are no additional delays with USB
> and display

The latest version of those two patchsets are ready to be merged and
have no other dependency (anymore) than between them, that is Display
depends on USB.

> 
> > 
> > > > +
> > > > +	ts0_default: ts0-default-state {
> > > > +		int-n-pins {
> > > > +			pins = "gpio51";
> > > 
> > > What was the sorting order here? I assume you had one.
> > 
> > The way I see it, it should be based on state subnode name.
> > Which currently it is.
> > 
> > Do you suggest some other sorting order though ?
> > 
> > Thanks for reviewing!
> 
> Then ts0-default-state > pcie0

Oh, right. Will fix that.

> 
> I think the recent recommendation was to sort on the pin number, but I
> didn't switch myself to it too.

Doing that looks odd to me. When you review DT, it seems more logical
that sorting by node name should take precedence over the node properties 
or even worse, their values. Not to mention that that would become just
another weird exception.

But maybe it's just my OCD that is unwilling to accept such an exception...

So unless someone NACKs it, I intend to respin with the sorting done by
the node/subnode name.

