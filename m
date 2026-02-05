Return-Path: <devicetree+bounces-263007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL/RIPGRhGk43gMAu9opvQ
	(envelope-from <devicetree+bounces-263007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:49:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A366DF2CD4
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94502300622D
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 12:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1072B3D412F;
	Thu,  5 Feb 2026 12:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XFqtnzeC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fDsOXOdg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCA63D410D
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 12:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770295786; cv=none; b=Dtig/58ppBAXBEYh9mtayFtPW9FYw/8ND61cy2ykLo5WKBZqkrOx/E8LJvGrLDnzMXsCUe7Z8UilQ6PPXkjji0C9Kg9z0N7DNOWr6tDtf9aCGxhvzXzQ3zFLDjXRlhEz0GlIBcBF5XdUeS5ti7eh3yywl8lesPMgbpZzPJGhjv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770295786; c=relaxed/simple;
	bh=3BMWBWBLYFJuTIk9jxxHWUhtKnlzfCa7NOIKVhev42U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YAf1vHiMGCof7Cn17sJKyCq+UJrVL9Q6uTvFcI2+GUAP4Bez0NeIy1Mmosu1XkKoVCljO47wy2FRNJPXXrxSZ7CBmRcflRigjV4RmhfqkP5dM1xEo1TDQvMFvPLKmrwSqmNxY7N/VOOSLjCvYJyHGWk3RUc6iyDbuyzWaWI3L3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XFqtnzeC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fDsOXOdg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615BHHPm2157766
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 12:49:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=l1k4aGSlFzlT21lOBJiY1974
	fFVxElBmKlaBUd8j7G4=; b=XFqtnzeCQOBzkAn447CntU/nkcsKTuXII6vv2K01
	OrApMdyJgxjzbmcGLNRnUApFJoOivl3VcjQp6X3qfkJ5g5DJk1lt34eXscCWSiVz
	/b476sFUbAc+1s18KWOdEhxNSYv7eox6ilL/9DOQ2/7KYOL03Ps4g1TVywJjNgW/
	eCxlKGYO/1OfijeHjaGfeULqA49qLtIHH7OfS4ee9du1ZKo7y4+PN+uIamTT2goT
	U5GtlK5inkrglPKjGNsI1F97vNxqqgy1z9Ww0rsJAJymigcmG65hmUO9m1Pd9s9J
	30zPKLFts6xIk6TgyEtW28ORb4Hmrhe4L93jz4ZxZvCS9Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4gynsxcb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 12:49:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a289856eso581166385a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 04:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770295784; x=1770900584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l1k4aGSlFzlT21lOBJiY1974fFVxElBmKlaBUd8j7G4=;
        b=fDsOXOdg4ZLcCFbOfeSsEN3MPhFf3gU0nhMk8uCsmZ064kXsLxnaDYe6D/KzElIvGo
         INuqv0Hje4Vce+xeu+eQ2G37M4UbqodBKp/uaKbhskguSSTK0VY81SiEMX1rLtfTCxgT
         UNQnN39+6/eAiGLT0u8QLqgPSZU7DjeR94W+bRWmYkGf0yPpybqCtlAdhbBEv/w/BecH
         siIn+HmpiKI50m0JhVzjZsMlUPFzASLQoHjeWPcGVst2T8t1MX+2Ok0aeUhuGWQ5NX+Z
         3VD0JmBQgz1hsRNCwz+fPknr3VqhGbkeyEh6xMlbed9NTytW+H6qKlplsiKaArzxO9NF
         X1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770295784; x=1770900584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l1k4aGSlFzlT21lOBJiY1974fFVxElBmKlaBUd8j7G4=;
        b=Awwj09Xr0ehBhIgT1k3F38pmL7grMJRXN6eHVRhvEW8UA8hOtFFxd8yZVRyJYgsReq
         uFYywXPfNiED0lREq5S0TV+bsVaCNgNd3R1s6/HwchoacYLKcWfHVSnpCHm5doq+c6kJ
         wDMYbSz4O6NwhBDVV4ry3dOIh/F1jZ1gQgUfOUmZ+LhfFn+pUUflPwol3lxN2zLQcf9A
         XDqO1btDoGY1yAK1ICC2EPbmAsRphj6az59uj9jCgW1tF04DOtQOQWy7saj4zl77rZXQ
         HB+qLWOndTeGJT5yo8mYW8zlJg47dj2CQL0drvQnlElis5n3Vi7QSygq/CzIaMHaODNE
         2h9g==
X-Forwarded-Encrypted: i=1; AJvYcCWXSN7iTgdSn3wnWPZx7gN7n61odUPS7WoomVm906choA0zWl7hxiq5P+N5vOlfw0oFHUaS7UataxaJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzOgjRvxI+HY9ebQtSDpEW7g+fjAVULuw21RKRFxkiJk7Db1wul
	Um3U2+VN/JjSivJ1cdEcCeZ2ONc5jkHTkwVBuHA7ngEc5A5rvurPlvrdz/NKx3Q7S5TX+M0YyXs
	uB87nSW9m8Pt49lwgoBKm3KcY0B5WWxZl0YBWJUSuVxl0TnVeJk6yBK0Mf7Zx6mJ1
X-Gm-Gg: AZuq6aJJ2T4oknuKsot2x3uwHw5bJIwUeq6O0/ukRIgrE+TbafAw1wk0OyLndUtZ5hi
	kaipIoQNIy9ZEex1nVE/isYLlN8iFTZxdak4vaSorKbzBIou63I2rGJvyWgGLDuHmScUK5PdB7c
	aoABocobWWDM/uNsMA0l6mivkkvZaaU9/H2J/oSyHOXnSPw9Mrl80OBLoum9VC91sdTom1oY9Fv
	ItkIQLSEhL1+3ApBusVqnU8lbkGjkLtY8TiKkY9Nu70mG7xtaNWSK6UGVugqdy3ShFVnCauzVd1
	JcO0g/hAhtpbAtau3WF/bR5u7OiOfCedCAKBeQxG1RkmHsCXfkH2xmNwQAiuTh0wDpcZWnurQCn
	9KakHamg44GQWj7puXyXJaH3IlyU8fbw5Holv/8E2ldw4pPxb6z7R/0JM2kB/W/ZsZE4vBXJhdS
	nFQvz71GoDNtDUxi4VCQooWB0=
X-Received: by 2002:a05:620a:d8c:b0:8b2:e0db:e639 with SMTP id af79cd13be357-8ca40c40774mr363156285a.32.1770295784043;
        Thu, 05 Feb 2026 04:49:44 -0800 (PST)
X-Received: by 2002:a05:620a:d8c:b0:8b2:e0db:e639 with SMTP id af79cd13be357-8ca40c40774mr363152585a.32.1770295783495;
        Thu, 05 Feb 2026 04:49:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e3882dc32sm1362201e87.89.2026.02.05.04.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 04:49:41 -0800 (PST)
Date: Thu, 5 Feb 2026 14:49:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/7] media: dt-bindings: qcom,sm8250-venus: sort out
 power domains
Message-ID: <dqjlapoby4jdei7sewhoc56hwcctyp4lerhkvspreh7k6dlsl5@y4crjbcnxbgq>
References: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
 <20260204-iris-venus-fix-sm8250-v3-2-70fa68e57f96@oss.qualcomm.com>
 <20260205-vermilion-chupacabra-of-teaching-f964eb@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-vermilion-chupacabra-of-teaching-f964eb@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA5NSBTYWx0ZWRfX3lpHmKkHEo+G
 G0sXhWG4RZ0ktBc8eDnVmqNFnHfMlRLXFR+aO4YjgWAvpxITJ1RMC9ELHvVLMVs61DIbB42dXHJ
 uUkdaF6qF1I45OuXQJguur+aJkY9UsrHYmKYFGQNYETwq7Obr6r6KjRY7IkPPrtAcdjidQRYOLP
 Absc4/IKO4VU8tJa/6ugjfwZvjiSuyzk/bCdIfjegAEpwBI/6+hCh0TfRz3YZvAjXG2hiRbzJZe
 mQMmrKoJGP27WkVwulvGQicgjaui8lWBxzS+qX0cY4BgQ0d0zAdNG4Lt3eXJrP1UQe3CnaKZjhI
 Mp+ZSj383V5pQyXZrT9VpXf1OP1vQUtffTcEAKV3UbLwktAMMZEQliusgIwN6wwnUNSkBhReKFt
 ufajuVleLAxihoi/ko7bQVxebXTuXmOL6ONbIWfGA2BYS4vkceBL4He7BwJgYBLr9rEprmaAfLD
 G8UJHN6FXhRSN4xWk4Q==
X-Authority-Analysis: v=2.4 cv=GdcaXAXL c=1 sm=1 tr=0 ts=698491e8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6wHPD0OzadKXDajM_xMA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 0hc5Yd6sk3DA14qtXwQl7zs-rKeAhU6B
X-Proofpoint-GUID: 0hc5Yd6sk3DA14qtXwQl7zs-rKeAhU6B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_02,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263007-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A366DF2CD4
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 12:32:56PM +0100, Krzysztof Kozlowski wrote:
> On Wed, Feb 04, 2026 at 02:59:50AM +0200, Dmitry Baryshkov wrote:
> > First of all, on SM8250 Iris (ex-Venus) core needs to scale clocks which
> > are powered by the MMCX domain. Add MMCX domain to the list of the power
> > domain to be used on this platform.
> > 
> > While we are at it, drop minItems from both power-domains and
> > power-domains-names, it doesn't make sense from the hardware point of
> > view. There are always 2 GDSCs and two power rails wired to the video
> > clock controller and Venus. Disallow passing just two.
> 
> the min-items were also serving to preserve ABI which you now broke.
> Same comments as previous patch apply.

Old ABI wasn't supported by either of the drivers, so there is little
point in preserving it. It has been broken ages ago.

-- 
With best wishes
Dmitry

