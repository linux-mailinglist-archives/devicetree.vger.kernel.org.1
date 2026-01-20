Return-Path: <devicetree+bounces-257652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FXGBLQPcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:28:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7814DCD7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7CAFD3EF462
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69BF340F8C6;
	Tue, 20 Jan 2026 23:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o1jl8yGi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YmIdj96+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A273B3EFD2A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950311; cv=none; b=sr5ePdlu1OFwpdAvmoIj24Hzbyl7jw1ZDUgemnx0FhzzBV4w16Y7bAQm75jA7SHUleJNtDhDCyMgX5Sgo3tpMQYU5SUnKLRRQ2Fl5cbfYs4BtyJd/tZC012ek8qS2FMy0WYwJxhajsS0jpUU+7PHwovtUjLTbwk6wktUOgMJWBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950311; c=relaxed/simple;
	bh=1j0Q7pzf7hRqlVAsUJvrX/tEEQPL7qnr4VVR8jMUNds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Srlfg2JJQe1kOcrWQIDT9A16/4zKiyphtO9CqGhTqBAp1CBXgAMOHGXo7qn2dukxqzNH9UyTrC81AoN38qJ7b/QLi0uM+f2RH3a+EeeT8MSnK/xNZ+rzbe5J8G4GCPmDbrm6CitIupCNiLhpNUdeDHdeHSS11Vi88j0cF5bdXt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o1jl8yGi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YmIdj96+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KHrOFc2828139
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:05:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GX80EvWIrKsY9lpmTcbAZWS9
	rKhCDtXMk6nX0x3Jqa4=; b=o1jl8yGiCVqVRV+QVz0wLA7JlQUIVvqJ9dafY23/
	raqoYDeVFq5SPb/r3Q4LGOLkP1LVn+ctg6Znx3RJYRe3COBikG/P+gDSzgMgSd/J
	SCTa1klEBv1dG/LyX9LuKDv5SKD+tGCQn3mRmEFJjy39f01mNkelrasRV4/p1NyV
	eO80qasxDBAm2qJLDsYhilbb3MWqsD+qcWJJS4spSRO0VQt5OCwzzBFbi3EowPzD
	4Xr2teINTn50uxUrjPsjCyofeN2EsJn0rBAWMEOogesSZWvxLZMc/WpT5J4Uzo9q
	tyQJA2BwmoKK04Dbl79z/SfMeHE+EON7JQQ+u7WHKxVVuQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btegk903t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:05:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c538971a16so202304185a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768950307; x=1769555107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GX80EvWIrKsY9lpmTcbAZWS9rKhCDtXMk6nX0x3Jqa4=;
        b=YmIdj96+rKMzR0p7CBf6yeKlm2FdRgHWIPXxO0UJ+gssklPhh0Ik+qhDE9KzcgS1s2
         jZQJby5N6R99FyMAFQ7D3+T18nmjNh5hfGuF9NVqeUp8aV8iES5iMmmQju9b3lFfuTNR
         6Lo641Sy7mGJcFQWiRYUOlf+lBUL6bEPYqEwhvYI5KkLXPKKPssH8yL+AbSyGz1IHMo4
         glEuqgQ7Pfa601kTT6VnHg1BryciI4RzdarM6we4VUsByZw6JfHrMr39nCOE8IbKoJb4
         xahvyzLdHddkB0NJfJo43S84Sz3p/wKlbPCwiQSv4IIIdeqlDfhYZEkpymQBiPV6W23D
         iuFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768950307; x=1769555107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GX80EvWIrKsY9lpmTcbAZWS9rKhCDtXMk6nX0x3Jqa4=;
        b=oncDFheM9vArkEqfnVV/+WzESo3VG7IAr7/zBVeHMuftZ7AxRrgRqvzbkMxEdgxXtW
         8flpIkw5Zm6dRIow8mVxMkzrihgEiK6WB8ejpZ14JoLZHCABFS/3aIECSejvukrpnWLo
         DlW4LZVu+ApAzMO2wjc7ekBoHvbVteZiFFlTHA3fbtrJRxO3xi11N8nUowlSU57n+Q8u
         hFVL8trPA7HVrGGRhJ74hrMr9Z67dwtPMwXdPz6JvyP8OEgQTtqRif9aQ0QB+0O4BgUq
         5g0gVX9lsjPal5EffFFWSVx+asU/iq8Bt+Lr3CTXWlf39aulD04klBvzap2FN521h2vT
         NH0A==
X-Forwarded-Encrypted: i=1; AJvYcCV5USWelkwiTXN1HjTHu/WfZlL1RsjZQ1nyUsOIpcJZtXBZt+WSgdkTpZQAu28SFRRaXlkFf5Ki0ar+@vger.kernel.org
X-Gm-Message-State: AOJu0YxlkwOSvgJVt3HHYaUJc6e/uF0EFf/c+6qMOdPTElQQxc8X2iKM
	J/lWSffXJqqaTPYFjFgYiB6aY1PsGrm/M7IDS1yNbvulwARIx6uLqoaEMk6W9OjPtn/psRU7c1K
	kjsJ48haaevyRoMu2ZfhbXX8BjTf6pHzVhfwE8cva0Kh6+Z0IQ9ONGXulXIkX61wN
X-Gm-Gg: AY/fxX6+28VBsE2Enxt3aT947w3F/w3nW4lyft67UE/1yMJvpf3y4gqKP3ZnUiVXJaF
	K/8Inh50/Xj4TGBt1H0HX1qOkSwM+RgSxZAIOFo3WupjR25XW15602RNbo5koABi+tTl76XdsCu
	3Ije1T8wq/rNz4AwI1kMo02+2NoK+8xQYbdMpI3wMBpUSL3MlwiZMMAQV+Jlgf9YQnCNo+pLu0Q
	vcitBq21+vnRoMz7+pSh/m1VVUpMjbL1kbtDGgmKVX3d5/8bd/svCJfwQOIf7foZabjpV6QWq8z
	/i9bMBrgiDLtP/XuPb2ape56KN8hvVZwaUY1gV3EWgOwdKvp7Nb0w4XcMTNIcJJpu8AmB//56DU
	r7s5AmDZZoq+RfnG5S59P2iJeE254VgGo3QQVV3sgt/cSWmx3goxVBrPc/i5PICe3quf1aoG3R2
	beOpWK89NhlZyqUlXGIKNYGn0=
X-Received: by 2002:a05:620a:708a:b0:8b2:d56a:f2f3 with SMTP id af79cd13be357-8c6cce504d4mr450310985a.87.1768950307523;
        Tue, 20 Jan 2026 15:05:07 -0800 (PST)
X-Received: by 2002:a05:620a:708a:b0:8b2:d56a:f2f3 with SMTP id af79cd13be357-8c6cce504d4mr450307985a.87.1768950307087;
        Tue, 20 Jan 2026 15:05:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384dbe6c1sm42390371fa.22.2026.01.20.15.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:05:06 -0800 (PST)
Date: Wed, 21 Jan 2026 01:05:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: milos-fairphone-fp6: Add Hall Effect
 sensor
Message-ID: <wpjvuclvpjft7y2rlrmfgszkzmc5vvmohif3etqrtvymxjjyjk@h2dujh5egdvd>
References: <20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com>
 <3a17f2e5-0724-4d70-bd22-1e612142b3e8@oss.qualcomm.com>
 <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DFSOPXFSOUY2.2Z6XCLCD796Q@fairphone.com>
X-Proofpoint-ORIG-GUID: DZmJ5xohOM5lz2BXlJGwJMs70dUdXZx1
X-Authority-Analysis: v=2.4 cv=X9lf6WTe c=1 sm=1 tr=0 ts=69700a24 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=5kQVAYz2r87DXKKq-r4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: DZmJ5xohOM5lz2BXlJGwJMs70dUdXZx1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE5MSBTYWx0ZWRfX04yexjjC90aL
 akI90Tp2s+fkFbZpnQO8Sl8UhH77UZngdim4VcTx+EiEnse7VaE1FLSwIZ5/6NgH64C4qEEh8IA
 I5mishENTB+pSXUmtEPDGa25Dn7BSpUkYU1q5bnZgDx2mgOA4k8JFLt4Ji90uhUcHGO8r3YKCGz
 w2NJOhtsJbdKZkTDb+Aw2MHTCuV1YOpMCj2w73gFpPa0VbhJWRo3h/X4gcYfYqtCr1cxC/Mwu/K
 sO07V1wUXF5+0l/HW5b6IexANJvK4fRYMw6OaYTF7ps19+ghhtYAMJ9CX7W3IwPozdJ3/rx9hg6
 CoyiJN9Ezx7P6b2jmdBSOBHRkN3Ce4nKOBOb7SKSbTCoCu0zttQr8vvnhYVhXffzNpYG9XkZKUE
 q4Eqf4WCfoPqR4BDGHctl9gB8SHLMkU34GHcN2Gy4KRon7dLUfaobm7qpSFaUp2zjd51tLUY7rh
 +g81wjP2ToXW914nF3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200191
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-257652-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[fairphone.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BF7814DCD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jan 19, 2026 at 04:52:23PM +0100, Luca Weiss wrote:
> On Mon Jan 19, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
> > On 1/16/26 3:22 PM, Luca Weiss wrote:
> >> Add a node for the Hall Effect sensor, used to detect whether the Flip
> >> Cover is closed or not.
> >> 
> >> The sensor is powered through vreg_l10b, so let's put a
> >> regulator-always-on on that to make sure the sensor gets power.
> >
> > Is there anything else on L10B? Can we turn it off if the hall sensor
> > is e.g. user-disabled?
> 
> It's the voltage source for pull-up of sensor I2C bus (so
> ADSP-managed?), DVDD for amplifiers and VDD for a most sensors like
> the gyro.
> 
> So realistically, it'll probably be (nearly) always on anyways. And I
> don't want to shave another yak by adding vdd support to gpio-keys...

Why? If it is exactly what happens on the board: the device producing
GPIO events _is_ powered via a vdd. Added Input maintainer / list to cc.

> 
> Regards
> Luca
> 
> >
> > Konrad
> >
> >> 
> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >> 
> >> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> index 7629ceddde2a..98b3fc654206 100644
> >> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> @@ -32,6 +32,16 @@ gpio-keys {
> >>  		pinctrl-0 = <&volume_up_default>;
> >>  		pinctrl-names = "default";
> >>  
> >> +		/* Powered by the always-on vreg_l10b */
> >> +		event-hall-sensor {
> >> +			label = "Hall Effect Sensor";
> >> +			gpios = <&tlmm 70 GPIO_ACTIVE_LOW>;
> >> +			linux,input-type = <EV_SW>;
> >> +			linux,code = <SW_LID>;
> >> +			linux,can-disable;
> >> +			wakeup-source;
> >> +		};
> >> +
> >>  		key-volume-up {
> >>  			label = "Volume Up";
> >>  			gpios = <&pm7550_gpios 6 GPIO_ACTIVE_LOW>;
> >> @@ -316,6 +326,8 @@ vreg_l10b: ldo10 {
> >>  			regulator-min-microvolt = <1800000>;
> >>  			regulator-max-microvolt = <1800000>;
> >>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> >> +			/* Hall sensor VDD */
> >> +			regulator-always-on;
> >>  		};
> >>  
> >>  		vreg_l11b: ldo11 {
> >> 
> >> ---
> >> base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
> >> change-id: 20260116-fp6-hall-sensor-1049f2f872ac
> >> 
> >> Best regards,
> 

-- 
With best wishes
Dmitry

