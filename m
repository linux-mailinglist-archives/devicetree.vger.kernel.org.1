Return-Path: <devicetree+bounces-275434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOmAGhE8tGmDjQAAu9opvQ
	(envelope-from <devicetree+bounces-275434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:32:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0890E2870F6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:32:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B016E32BE2AE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727823612FF;
	Fri, 13 Mar 2026 16:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPkT3yfq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NNZKNe/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E3234216C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419227; cv=none; b=tuO2htqBFO4dSqXBqU51MX0I1/vlAu7SsKRFOcDDSjbf7znz9cou2dCHnZipcAdyXcHNkJOKrP2LSoKu67uLU4kDqoAxsmoR1/0S39l0txEFQPKxVlG4r5Z5EjbPvmDYGDgYjHem15f7H1VeYAHDt92aVAxGvcbCZ/DFu2PjjDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419227; c=relaxed/simple;
	bh=voyBjdKSwkLamyDzriTV/RfjsDyNQSsgghCmX2j4XRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WwCKE7nL3RdNjbAfL8rpv/L3MCmRg/xRHM8l3ZC+T0o0nTBAN8ih2bkDNLQ1sXgpa05Bd2qqRo6ROG64BlUF/BSWchIOEmYehHQtLlj+QnYr3qF+ve8VFzUQSJRuLXJasi8WqpRMAVs5xj75HEqkgr5hqcX/vAwDTjUZxUW+bWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPkT3yfq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NNZKNe/V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DDX4Er792852
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lvFSFt+UmAAWATy47J/WKBKc
	fySPAKwdTq21sXgGZIg=; b=GPkT3yfqOjk2uLveNpnmXJSfgLhm+FhlXOGk01vW
	lXIj6+r0Qujq0lq8x8KjGdv1bkyALq4ci3ySLmXXkYh6qO+DfoGaE92tDtpCiyvE
	YfKLlvWa4S15wXn6XxZBLdomVcvkTLqlc/1Ht29tzR93V9IvJ5zoGhrveF0GupBV
	5nATwGP+VHIXwh4L6lSUgDhRAJZ8tPwfOIaRkBjW3mOsUHRHhSh+PVrSA1FDEEB+
	PXxdS+IdKbmiWjgyS5Ka2XTQ4wIymnm2wOlx06ZEfo/OPiJDuNW07n0z9iPdRcXo
	tUu0iyeI04HI4oeANLy7ayYW7y6aoOMgIRMyY2GuSiv+nA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt20w6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:27:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7a25c5a9so1270290285a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773419224; x=1774024024; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lvFSFt+UmAAWATy47J/WKBKcfySPAKwdTq21sXgGZIg=;
        b=NNZKNe/Vq3x3FEj6p/CNrHZU42qJC7f6S1s4hzyAZu/dWRdlrxCMojiWqxwMfoSRyM
         HfjXa0zG4Xl2J7iT40ZDl34T21p845b4Ax7hRpMq4vYp7wQljLurHfLC5JqqPOZL3oL1
         hTdTooue5oeedbgfTui9msdmOnHNxpUbL3fev0Def0F9Jx0kn80WYUZlu4CWOY/XDeHc
         JU7uKw3JIG6J1jGLTwOzPIlwtWyz9o22DG+pxO1RSrC16qJDoBDx6ewv5QgWd5sqcPVT
         7pJ+px+B1czvqM/Cs07MX0WTl9e31gMH1k53cm9reW+LLLS+o1a7lFBtA8PGTe9aaos8
         BQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773419224; x=1774024024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvFSFt+UmAAWATy47J/WKBKcfySPAKwdTq21sXgGZIg=;
        b=Ak3/14DEK379DIdLRWFhepVn5zW8lhKE7tEgxl1Pc3YBHyhnfx9huVA2NdCKsVY0lI
         X0iH7a3awACA2BYUqrmfEPXYt2NlpsKqlqD07lqOFLLiFsVY0zvdOoY7lPeYalhnECrv
         xurzMXNEOV7Z78YkN+A4vDCMlnhfxCkY/ha6rYNhOwyXz8NezcEOuD5CQ5/A8toVFqIA
         I3pofnODpYUw4bUoTFpHPsfbtnES4KEaAWvy3E3CHLR6O5ZNmxiinbZSUSSRarSEWWs6
         VJGRqp00hPTTPUk7UBhd5i9Rzdpry/jWCix0TNe78UZYiiciJqQE9RymfTR9ay4AiJEN
         9HHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3XkVQakL8JhmSnhVptCSqVptcdYm00KEH9Xe45QyMLpC5YeSF2AJOvwtEaarrowaBnkN7/6GdYo7D@vger.kernel.org
X-Gm-Message-State: AOJu0YwxcUjRz8V2HEPiJdQ1REOy4+B6NC48o+eW1MCzJjSFR5XbIT8A
	JvIvdMTCMtuuGTr7WMKlySKEcAQEpeAfPuesD1daNufPWMZBTZLIYUzwu/uNGrR/CcUtqK6TB9C
	LtHSBts5XNIXtED1AjtJvvejrxBb3XotUEov0Hi1xa2BMyswguJa/j7qlm7LACftW
X-Gm-Gg: ATEYQzxE+tNHJRJfMnVQk3qq6Qr1oeR9xRaPXcW/ZO/aU0vLzA4nz87YEM3wR4j3H67
	vBHr3+lrZoO7ZQcLOGRfBwdLhzacCYNKPNrqMhmNnyAzl/QfEJ1QDd9t2S86LKha24RFQ5quudY
	Bf1SOG1+YBcu7zvI567JtyUKMeX/hOZkc+oon0ujj1JHriXNRLJ9h4rbIAzsIpjepGhfbbK7oCy
	xtmNpZqcFUfmD5zy/s8FTktVvKeG+egCyPZXy74W+EOiNUgKNHBm/ustUxjMS0Tyj1bvzVRLbE2
	sJCYEGZ0hqzHWQQnUJIeDXqZf3FWQQV/lxm3xajZCua7EszkCFkhzjfhCxzc76xwCxy39eXFjml
	UKPFGqscA3fDOn18qoQPEOBTL/UKWNdxjfDUAAVF0vV5/SwkYXWz4Jlaub7bdE+/vyQ87VGD8El
	7K3PkwgLHNuzcgu+vYyxokxxFCM83qpOIxcRY=
X-Received: by 2002:a05:620a:472b:b0:8cd:b342:14ef with SMTP id af79cd13be357-8cdb5a0c885mr556443885a.7.1773419223443;
        Fri, 13 Mar 2026 09:27:03 -0700 (PDT)
X-Received: by 2002:a05:620a:472b:b0:8cd:b342:14ef with SMTP id af79cd13be357-8cdb5a0c885mr556438985a.7.1773419222969;
        Fri, 13 Mar 2026 09:27:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33d45sm1642225e87.11.2026.03.13.09.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:27:01 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:27:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
Message-ID: <xdr5q7y5dcszcbjjwquvhbtlshemrov7nkbkmnutojilpp7bgn@qb2pmvkvniid>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260310054947.2114445-4-gopikrishna.garmidi@oss.qualcomm.com>
 <vznk4wbziuieoctzrqwbjm7xwdudsrj4afanl5lx67mmbar2rx@5msox6m4h2xn>
 <454580f3-7459-43f9-8321-a716d55cdbf0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <454580f3-7459-43f9-8321-a716d55cdbf0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b43ad8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=ugnmqWBoImWiQiQDKksA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 4TT8bom9FeEl-E6Z9rU6zRsUalnNCVP0
X-Proofpoint-ORIG-GUID: 4TT8bom9FeEl-E6Z9rU6zRsUalnNCVP0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzMSBTYWx0ZWRfX/gBHG2eCNBej
 kI/MgwPMuX4A0pOthfNwLiEScDfzHDzr6DHsM5ptvz3nmq4mpdEY1bfDNdwL81tbRvYoQTtXeP7
 2B/BeBbwll0m0TzxqWUx4DTEn0FY7M9r5pFko/PSGqxqAP9xe6Taon8rJXH6RsT6So9uABmCzFi
 UFxILFTeYvMNpAF0IAXCffuEi3rSqQ6ySeRST1CTcrz41EsiRbPRm8hqZrCNl4/4ewQPoCdVfif
 m3J5EHFOKAhY2EQSPgMM8gj0ZDuJt8YPe/SwBlURBdEGWUOY9Y1Fbq+JX0yASVZMvgbxcVTejj6
 1g7aatXQQtuTXeDFRidOmXBFCj5sCE2UWu/uF8imLUvqVMIQiAO1sYtMlaU7B0bIStUGp3UgFhz
 Ok7/Zk+0Ykk9smhSeM2v8QsQxSvF0hHQdvN12kFavxxEZNVdv7wI2uIU1MFRv4cmreuT08I1K6E
 QuOZgumovcS8ro7xSOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130131
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
	TAGGED_FROM(0.00)[bounces-275434-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
X-Rspamd-Queue-Id: 0890E2870F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 11:06:46AM +0100, Konrad Dybcio wrote:
> On 3/12/26 4:02 AM, Dmitry Baryshkov wrote:
> > On Mon, Mar 09, 2026 at 10:49:47PM -0700, Gopikrishna Garmidi wrote:
> >> Introduce support for the Mahua SoC and the CRD based on it. Some of
> >> the notable differences are the absent CPU cluster, interconnect, TLMM,
> >> thermal zones and adjusted PCIe west clocks. Everything else should
> >> work as-is.
> >>
> >> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> >> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> >> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile            |    1 +
> >>  arch/arm64/boot/dts/qcom/glymur.dtsi         |    2 +-
> >>  arch/arm64/boot/dts/qcom/mahua-crd.dts       |   21 +
> >>  arch/arm64/boot/dts/qcom/mahua.dtsi          | 1040 ++++++++++++++++++
> >>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |    2 +-
> >>  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |    4 +-
> >>  6 files changed, 1066 insertions(+), 4 deletions(-)
> >>  create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
> >>  create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi
> >>
> >> +
> >> +&tsens4 {
> >> +	#qcom,sensors = <13>;
> > 
> > This matches the value in glymur.dtsi
> > 
> >> +};
> >> +
> >> +&tsens5 {
> >> +	#qcom,sensors = <15>;
> > 
> > This one is indeed different.
> > 
> >> +};
> >> +
> >> +/ {
> >> +	thermal_zones: thermal-zones {
> > 
> > You've completely rewritten thermal zones. Can we patch them instead?
> 
> It's more messy that way, sensors are reassigned because there's less of
> them (and less things to monitor)

I'd say, it's a bit messy either way.

-- 
With best wishes
Dmitry

