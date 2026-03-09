Return-Path: <devicetree+bounces-273128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QA/YFBg4r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:14:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BF912241766
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05CF4302DF98
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BB041C2F1;
	Mon,  9 Mar 2026 21:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KprJ3G0T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cyFSbymc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A085236CDE0
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773090836; cv=none; b=rhcysZ5LLAjAXnZ34O78hfqkKjaKklev+Dvx51lrf0JYXlB4HGyrXFUIob9Mes5fBAHdnAS3paAaivwjzu5ZWoHfXGSLfuUDRpEuHYdVYeD4DuRXd6CPS9OBgbanBQbebxgnBP2G9KsWKx4n8Rxgebm2dt3FNBxQZsHy5ykB4jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773090836; c=relaxed/simple;
	bh=Hse/auoheHP/F3EJT+M6p+2k0KQETV70SjVAvkda0y4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nhoRypO3vICdwh8rSG6KIqcwkp3vsluqwbN7MfOreevXt5EGilXam+3n4OgOpm8uX7JwjoIgAQHFOt0vEWqdtQzavJy3Qsp5B7XwA4bJX/2isaBpPuLYmDEPFfOk3HtoxPIjSry+fRh2b7mW21Q1MSsOM7Ivoremcmtbv+pyFcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KprJ3G0T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cyFSbymc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCDPr2428709
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pxaXqUQ8IgIATac/zuNxCpus
	ECRxXly1sQuf76VmJ7g=; b=KprJ3G0TGPfMJIxHaU4Z7ND4e54DRvraRxhsgMkv
	CKnlgOyixpDrvWLWgCHaAOJ28sywgME60xTRfFmhoT++ucXcEjrtyoH/lt2OlH2T
	i11qrbN1HP2fErIRf3mxmmKwr+by7Lgji8ObHuvzUnlXEGuJYJxr69vwFKvQ8db5
	+1ay472TD2p62GkfzjE2tNipV1FMUDd6vD6E8Q8q4RxFnPpfGM3JCbqeQj7HIkX/
	UYNhHkIXI/u5u4M5DQ4fR9UIqbUtZAmtscDDuX99GOD5avNrJtjH8XtAZxDr3EMt
	v8KPWHJC4QWOG1OSDvWstTe0Fa1ER4ptq9Z3S89voA3yzQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1eks0wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:13:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7fec8d44so945886585a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773090832; x=1773695632; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pxaXqUQ8IgIATac/zuNxCpusECRxXly1sQuf76VmJ7g=;
        b=cyFSbymcmq2o1fMBHKBFOda1z/PyihdBDl6yJ7Qss9uX0FGXYcDerN5KKg0r8qGZbg
         iwH22KImFpEfl63fsG44jszJS+vSxnDxKpQSZphbCzDQ7qcqnKrSobg891x/TVEi5nD6
         p14GQN+uB6MdlIyDVRpmrQ0B0Y+2pxJY9ljtCrHj8LCmIHyxppMxy0C8XdMOqmJaQvMH
         wlpvY4Pqpx41uOk6jVOF+tS646WgkM+a0XsfCmfg3hRN8Lbu/2lidPvuQ2k81bw1Symg
         YF0QnIqSfMUm86dDOXQOoz1b1sQqqHrJ+Z3/k0hBFBQpalvPYacdFSjkbjS+yd344b7b
         VLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773090832; x=1773695632;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pxaXqUQ8IgIATac/zuNxCpusECRxXly1sQuf76VmJ7g=;
        b=c2/tUGhbW8itrJ6CKwvUeDf1X/ywELj2Wn/D5cm/+XGq0xTLGTp6sL6UufCMlion/s
         cRTIE7BtPyjpL4uLlSdSXRoiuGm2FWxB990JcOx3JTr2pdklrIfsAGDgURqtybsBb8Wr
         HgD0FaIKBk8uB3sRn4FaZX0iBpxDmDSSEFcB1IJPQrtAmEprtfagp24n82OyYAlo2Si/
         /UGu1k4rUWGN8x1SfhaUQNqZk6MOYaJjYWuwchjUqvcJxJqVJAz8xNVM8Y5o0SFcsjIx
         5NYRmWCv/NY3btxe5zZFfUzsopwt1yJDraFtoqL5izvGtjanEQaIMZmk4SdPRPxZ4StD
         6JqA==
X-Forwarded-Encrypted: i=1; AJvYcCVjbfwEG+Z2kRdV9+LKVif/rrGQRiAsADi+Ad0cUQEc6xXw/G+yVy26RWKpDoCvxhR7fsf0DmGuhdl+@vger.kernel.org
X-Gm-Message-State: AOJu0YyKTWsOsNSg6Kke558ZmD8fRnsOeTBnKL13JO1YHFkOBCiRiiw4
	67+ew0yoofe9Jl8/AE9qCvYVXDddJ3Sh+Guh/Cny2fOUESOaPX6OYtvrLaRKyK2n2SgGh1Gd4OB
	ydI1RHOr9/H6eNyMAgJy4dRfaPVe7ZMq4X/lyvU4bt6OuKc0kUo5msCCL+3yPm+m6
X-Gm-Gg: ATEYQzz2Nodp1yzcqQoU/1272sWJJ2a287ZcwAN5XdF9ESe2qNCO6lYWKJ0rf5kRdoN
	kn9OKWnv2SMdDP+NKH2G+UBuAjSY+kQ276N4iNiP7C8lgeEiSMegWl5apvjn39JR0dq72SaFcKZ
	JEjPYFKaVqW6Y91UK66cm42Pm+s+WJb1GweliT3qGHfTrCAxQ9jpzYn5fuRyL/uoah1zNq+lvjK
	thta0VBWDMg4UrHPt1ptmp/so0ishYVwVdAZGTAIxic9W1MZMLTJnN7f2XR+eOfQPxkj2GDGLDY
	piiBLoKwXwGUvhQq0b+X6w/zK+m0l/v5AUE/FbXuBn/xriCjHlAAvhVFU4ZtwCl3PqfJaiJR5B+
	0XYcb6sjA4/qZP69njVLFjQPzv9kYUFzF3PmCajMmofOtoMdqzJAUb7JVvGWxpnfBcqlRFpgUpm
	acChSScTUrYOm78HfB3xxb0z6CWWiDyUaDrE8=
X-Received: by 2002:a05:620a:29ca:b0:8cd:93cc:2089 with SMTP id af79cd13be357-8cd93cc283bmr138790185a.81.1773090831932;
        Mon, 09 Mar 2026 14:13:51 -0700 (PDT)
X-Received: by 2002:a05:620a:29ca:b0:8cd:93cc:2089 with SMTP id af79cd13be357-8cd93cc283bmr138786385a.81.1773090831486;
        Mon, 09 Mar 2026 14:13:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d01cbfasm2322012e87.14.2026.03.09.14.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:13:49 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:13:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        bryan.odonoghue@linaro.org, ilpo.jarvinen@linux.intel.com,
        hansg@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: Re: [PATCH V3 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
Message-ID: <jcjspcef7v75btwnhjzgsqndw23j3k7jyhnacxzwridjdkyize@slpzcxwyntzd>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-5-sibi.sankar@oss.qualcomm.com>
 <20260309-festive-prudent-ibex-f8b601@quoll>
 <ff241b01-c7f4-433b-a822-c5cd14e3e696@oss.qualcomm.com>
 <3eaceb96-003b-47d2-9ae5-bb676dde0240@kernel.org>
 <ad3485df-5570-4631-9d6e-2f0b90a47235@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad3485df-5570-4631-9d6e-2f0b90a47235@oss.qualcomm.com>
X-Proofpoint-GUID: pqe-2L6XhCrnEd3a3Ipg9FVn65K61dTF
X-Proofpoint-ORIG-GUID: pqe-2L6XhCrnEd3a3Ipg9FVn65K61dTF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4OCBTYWx0ZWRfX+vWIALdaiX7D
 XIL0TkQZHQ9KtZ5LVHaRotmGStfd62tCcYBhwz2Ru5yAjFDyd/Q47sVWqM7hUnybuFNPnlEGuun
 5IpithCxjLtwOFsLujHsvZSBKZ18d1MinTrM9Z5nIGVo9mbDjcNpO9uX9To3BR9U3jjZqVSgRi4
 8pjF0xL6aRguTijDeflQ5k/LzPxsBw6ZukapfdFR7dIl3HoNunHQTBOIsEkg87zpjP7hZf8ygGg
 pgamOv/uqy/YjQ29mc9GP+Su/SSLuujxnUxpPURwe63Y+sZtdeSv/uUm1uS0yk3Ydqc18FuEjkf
 trbccJG6Arm90l7CrKUzxN3QxdEC/KznsyQ73x/Kbmzg5luM2ryrUSfyx8nJoL7BJF4zjVZIqXE
 iNLKXC1OVAUuwBcyj7fMgO7bzmYwOxpLczSfn1lwwHo0vgCaYX/WKhtybcWawb7zDapblPUqysw
 H/dfjuUiKZ/0NVLJ64w==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69af3810 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=cvBS6eF5mCKgJc5xerAA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090188
X-Rspamd-Queue-Id: BF912241766
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273128-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,4f:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,0.0.0.76:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 04:21:50PM +0530, Sibi Sankar wrote:
> 
> On 3/9/2026 2:39 PM, Krzysztof Kozlowski wrote:
> > On 09/03/2026 10:03, Sibi Sankar wrote:
> > > On 3/9/2026 12:55 PM, Krzysztof Kozlowski wrote:
> > > > On Mon, Mar 09, 2026 at 05:06:45AM +0530, Sibi Sankar wrote:
> > > > > Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
> > > > > temperature sensors, access to EC internal state changes and suspend
> > > > > entry/exit notifications to the EC.
> > > > > 
> > > > > Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
> > > > >    1 file changed, 16 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> > > > > index ded96fb43489..29a1aeb98353 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> > > > > @@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
> > > > >    		#phy-cells = <0>;
> > > > >    	};
> > > > > +
> > > > > +	embedded-controller@76 {
> > > > > +		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
> > > > I don't see updates to other x1e boards, thus my arguments from v2 stay
> > > > valid. It's wrong to call it "hamoa-ec" since only one Hamoa board has
> > > > it. All of other Hamoa boards apparently do not have it.
> > > 
> > > Hey Krzysztof,
> > > Thanks for taking time to review the series :)
> > > 
> > > What other Hamoa boards are you referring to? The series
> > > mentions that the driver and bindings is meant for Qualcomm
> > > Hamoa/Purwa/Glymur "reference" devices, so it only covers
> > > CRD and IOT-EVK. It definitely does not cover all Hamoa boards
> > > boards like you are assuming.
> > hamoa-ec compatible implies that and that's something I raised in v2
> > already. You need a specific compatible.
> 
> 
> Hamoa/Glymur reference devices can have different EC MCUs
> depending on the SKU. This introduces the need to deal with
> possibility of quirks and bugs introduced by these differences.
> Hamoa/Purwa CRDs and IOT EVK runs on IT8987, while Glymur
> reference devices run on NPCX498/488. This pretty much was
> the rationale to make the MCU part of the compatible. Anyway
> I can keep it as qcom,hamoa-ec and qcom,glymur-ec for now
> and add specific compatibles when we upstream those boards?

Why do you need a generic compat at all? Glancing at the database, at
least the following laptops seem to have similar protocol (I might be
wrong, this is based on a very quick glance):

acer-sfa14-11
asus-vivobook-s-15
asus-vivobook-s15-q5507
asus-vivobook-s15-s5507
honor-magicbook-art-14
honor-mro-521
hp-elitebook-6-g1q
hp-omnibook-5-14-he0xxx
lenovo-ideacentre-01q8x10
lenovo-ideapad-slim3x-15q8x10-WCN7850
lenovo-thinkpad-t14s-120hz-64gb
lenovo-thinkpad-t14s
lenovo-yoga-slim-7x
medion-14-s1-elite-sprchrgd
medion-14-s1-sprchrgd
qualcomm-snapdragon-dev-kit
tuxedo-elite-14-gen1

I assume that some of them might be false positives and others will use
vendor (or device) extensions to your protocol.

I'd suggest implicitly using "qcom,hamoa-crd-ec" / "qcom,glymyr-crd-ec",
because then we can use something like "asus,vivobook-s15-ec" to
identify the EC on VivoBook S15.

> 
> > 
> > 
> > Best regards,
> > Krzysztof

-- 
With best wishes
Dmitry

