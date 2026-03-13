Return-Path: <devicetree+bounces-275487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMkwFgJOtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:48:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D03B22884C6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDCEE304247C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64EB83CFF5A;
	Fri, 13 Mar 2026 17:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A6hrWt7h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N4LNHLlh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409B3CF687
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424108; cv=none; b=W7iZyIs4UsAIqn62C5MwSmWFjmX3ZvflgLMEZp2oOkhMed/GtuEKG4zD8XZyeMbxURYltcS2VbxSrQr9TvGnXl21Ug7tHHWjiw3YeVh5HG/M3xxxeWR/z2vW61Jxw9+AIYoYCYOGNNcg0gTlShNqzHdY1MquVd2uNNIPst1SQT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424108; c=relaxed/simple;
	bh=whXp33XI/mfbZfTGnFvvYMTAv0xMoxEJIwUS0GZJQ7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JgdkosaOxZ20VOA1px5fkjp4G5m6drWQ7MMRKao3sq72ARhcr98SGrjFm/fmdn020ZzvFGLShekfFhuEg1CbrhOx2cvFqB5juE0qzkkf/LCsr2SgUdXpPtdHfdApOHwr+hM8MTszCBrpnp2XAugoka7SWM9j7USFRVHbWfMfuQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A6hrWt7h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N4LNHLlh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DDDrYt793612
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:48:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wv3gsvfblyX0hKRRRuI2vwDb2Fa9w06IIp1I3K3aKXk=; b=A6hrWt7hWAiDlKtY
	lCX2oQEBngHLLRDENIXin2dvyrql8V3rHKNaeRcoPGX/87xB06HteloSjvn5Mmin
	VxGIE/5diZBq/3VbkvJMI+awoETZX44QjlTCsljA2vEPUgLsgZOPPPyOg3vfMe1w
	hXk1nekLxRNWQf//cH+YanwKxqWOyLGT1TAn1gr7FPJ/QtP3tNY1Sm/JoAxFBqBl
	SzVSZgMfzCFexFIlmjGvA+GpHH2ViDAckDQMXMTpX17Ig5JCHS55LyOspCdk6jSQ
	oP73HkT20aR78cX7EhVnez5NxzDce/CXn568qpGcg04rOhqtYa5A/8GukpiBX4YI
	ZXYkgA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt2911-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:48:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7774be64so1354994085a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773424105; x=1774028905; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wv3gsvfblyX0hKRRRuI2vwDb2Fa9w06IIp1I3K3aKXk=;
        b=N4LNHLlhUHu2kBkQxxHKMXiWIOaLiWpE9IhFxQ/BrKfiq+7GzYMeV363R8z1Rdcy33
         k2t/dYJClKiVUm4l3Pm69CJ9g4RmcjuWcDsd+xEPgo87KtT5+Ug50ieoxzmjMqh5vl5I
         6oz/GLxpA21OR3qRRCTNEqq9dnlP/mUIgDLCroVZp/LOvBYG6TDbnoqawTChbXQfo+HU
         JtejLCSN3irSbCXD8SQAIQFyuBJrdcy6kUK/DrcysKXD/w/gUV6TaWN04MEtGL7muPGi
         NskCf7FIsdN8QuQR4pIqdxA8fe4g2l2XbHE+HMjFxsmisjXFeA2Q/3gskeTo2mZ6TdLi
         fVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773424105; x=1774028905;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wv3gsvfblyX0hKRRRuI2vwDb2Fa9w06IIp1I3K3aKXk=;
        b=nnP6Jw/OWG+W4wbHjxGbUDWa9Sr9sbSK4DWW3BEXidU182YRjCSXIf/LQ2EpCnpLm6
         uZRcflamSou45CaGlhbBz/i2n5sC1C8BQVnZr7MWxa4h02nm93IaNlWZGPC+q8l+Fspz
         z/3PJcYG7UEqaXxczxuCaSpPEOC04uSA2hg7q1OxEjhB5q87tXkHeQSNaH4qlPjxA2G6
         xibeldavhA7rdBJCFwaI9AQ7NIlwh0918+OqWRU9hS7DnlHBygO5aJ81egv2HQhKImif
         bZIaCPPBFPSG2WckniMEA5pY+RunsOcm0J3cxn2N7L1z6fGLSCmxG6cRaJdlBWvIRxH3
         L+Nw==
X-Forwarded-Encrypted: i=1; AJvYcCVk+9p/L98U96klI7OBwJX11BoWgIyqrtBcp38StuBQinLBFjFfXhalkyCRP5ehgYScQkBXbyyGX/8k@vger.kernel.org
X-Gm-Message-State: AOJu0YyZef/z3EFQ/p7WTYx2/YYGWA/iRxvypUV+JzgQ1u/bGGyCNKOq
	Q5Ys2fi9PlkaKhgLBkg4d+ztL76PvoAghvX8foDm75Hq1peGnsVhLsQJuX1WUxqrSn71G+3tH2y
	JSe5JHap4ArCkInEUFkukDVNl5ksxvkdKECd+XZM6MB4relw+Tth45uwOnBwGZ4i9
X-Gm-Gg: ATEYQzwBhVr8hdr4Ggy1KrlyKCBdBRZ4AC5mLJdh3AZG8r4VI+UpwHOIqCjFtioetU7
	lxmCkdG8jnSpb0YHAr7HBUklLRSTMTww7duHeA0hAaQTj0zVKXwqdQ7TenGgpEapipeK1vJSCAC
	xIz2RJNoQEitMWnC6dz6NNS66yHA0TbQ7Lu+umqyjMULQCL37i2ydhBoZWXU1ADMnCetMzb4EnA
	QMe37ngb1g5o8S+X86xXlC3w7W24ZzSE4k/pfrcKOUJVGl8FwqFQcsPh+nzztQwWHVC10Wk61Oo
	y1SsjldQbDznJbCdP9LBIkq514fgwNaPlCCny9oxexQ3uKBQvO0u356W/V7/8bxOYWjs81HT4eU
	KOF4jQbXBTyl9KvOY3UxIChXT39TIppSn717dob8X0mTyVpfUD9i48rvSP7GXlQqvgOD+428Bmi
	hDM12u41gj/Bras9qZfFEq0CCHLKt2EG0/L0M=
X-Received: by 2002:a05:620a:40d3:b0:8cb:3e7c:a4a4 with SMTP id af79cd13be357-8cdb5b25e4bmr553904685a.46.1773424105374;
        Fri, 13 Mar 2026 10:48:25 -0700 (PDT)
X-Received: by 2002:a05:620a:40d3:b0:8cb:3e7c:a4a4 with SMTP id af79cd13be357-8cdb5b25e4bmr553900485a.46.1773424104899;
        Fri, 13 Mar 2026 10:48:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162ac3sm1708398e87.46.2026.03.13.10.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:48:23 -0700 (PDT)
Date: Fri, 13 Mar 2026 19:48:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Val Packett <val@packett.cool>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
Message-ID: <wzle4bdmemfknhflwhxikq7rk7x3ao3z474bhsr5zdkvtp67cc@jddzjpzwlfrc>
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com>
 <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
 <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
 <quybzbqxlohu6kiqmno2wzyltwejnc2vebxdgvdl3fdib7zg7u@wz3bkop7psu6>
 <20260313-urban-prawn-of-success-cff01f@quoll>
 <CALHNRZ8iBqGGRDKhDNOasfyf8TY43ne1N82irkuzDZfWUuV5sg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALHNRZ8iBqGGRDKhDNOasfyf8TY43ne1N82irkuzDZfWUuV5sg@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b44dea cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=S3sWFo-JtqJ6ORKfk3EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: hTex2LyzGs83SXQl2u8PIYRCtsUqXbtE
X-Proofpoint-ORIG-GUID: hTex2LyzGs83SXQl2u8PIYRCtsUqXbtE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDE0MSBTYWx0ZWRfXwOa98GMU7hYH
 HeH62qnhrcMkDcm9FpZZNqpZ3yv0pXQuebBW9XKD6RDeh5+YMWcJFfPaXUFe41Odyal7FBVuGGR
 ZP9MN64omQCAAbF+z9tTdwHWcTqtEn1eAH5thJ3MCAHjIYVpkjBG0oD7eQYJrIxsK3vu2ChSRWW
 aVTvYZW1jWMOFRRMjNcC3u26Ea/ulfpxxopIgQBLRYzdH6BvqilGeDKuLSRloS5Pmg8zPUotGgL
 sX/ymhJvy/BndIaxUsw5fmNDRqKafgdFlUBPHnIgqv2BFl4G6B/nvE5svSZtHmpKyu6JsbVYQZ1
 koWKf+OiwTbk9wOafT4DKJA2o9rhnJCXzTFK7X8cD857y5Ctp74JvfFS4BIa1Umr9lZJcyY6b2Y
 VZvst2ryiGfKq8Ik7ofPp47pj1DPE+5U6apof5Wdbq4RGuZ+dUhPPNacKOU2hyKpXye0b2BBm7f
 RTqWWbMicUKqayFbfqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130141
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275487-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:email,sobir.in:email,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D03B22884C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 12:34:21PM -0500, Aaron Kling wrote:
> On Fri, Mar 13, 2026 at 3:37 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Fri, Mar 13, 2026 at 05:19:27AM +0200, Dmitry Baryshkov wrote:
> > > On Wed, Mar 11, 2026 at 08:39:37PM -0500, Aaron Kling wrote:
> > > > On Wed, Mar 11, 2026 at 7:49 PM Val Packett <val@packett.cool> wrote:
> > > > >
> > > > > On 3/11/26 2:44 PM, Aaron Kling wrote:
> > > > >
> > > > > > From: Teguh Sobirin <teguh@sobir.in>
> > > > > >
> > > > > > This adds a base dtb of everything common between the AYN QCS8550
> > > > > > devices. It is intended to be extended by device specific overlays.
> > > > > >
> > > > > > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > > > > > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > > > ---
> > > > > >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> > > > > >   arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 ++++++++++++++++++++
> >
> > Common is not a board, NAK. This could only be DTSI if you provide some
> > sort of HARDWARE arguments explaining the common parts of schematics or
> > hardware design.
> >
> 
> > Not enough. We do not add compatibles not representing actual hardware,
> > just to streamline boot image handling.
> >
> > Plus this code is not even truly correct.
> >
> > We do not write DTS to fulfill broken Android boot process.
> 
> I have been trying rather hard to find a reasonable compromise between
> mainline requirements and a normal Android use case, something I can
> actually ship to normal users. This seemed fairly reasonable to me,
> since it can generate standalone dtb's transparently. But if my use
> case can never meet submission requirements, then why am I even here,
> getting shamed for working on Android? If I have to fork the
> device-tree anyways to fit my requirements, then there's no reason for
> me to put the time and effort in to submitting something I can't use.
> I'd be better off just keeping everything out of tree as googles
> kernel-platform supports. And never look at mainline qcom again.

Well... It's a tough argument. Getting your DTs into mainline would help
occasional users that would like to run something else than Android
(PmOS or some other distro). Also it ensures that you can run Android
even when Google (Qualcomm) EOL the current SM8550 msm-something tree.

Speaking about the boot process. I remember that historically it was
possible to pass several DTBs in the the Android boot image. Is it no
longer the case? Is there any way to identify the boards (I think
historical code was using qcom,board-id for that)? Then you would be
able to squash all your DTBs in a single boot image.

-- 
With best wishes
Dmitry

