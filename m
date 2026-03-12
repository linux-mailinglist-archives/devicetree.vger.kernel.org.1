Return-Path: <devicetree+bounces-274573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPfFM3exsmmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:28:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A174271BE7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:28:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 445C63048B00
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091002D8DC2;
	Thu, 12 Mar 2026 12:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lnd1Qlzm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bKAjitIK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20682D8379
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318308; cv=none; b=e7iNgT2A0atKFaUHyX2Pukt1A0spJeKnxf3IlXUuOHm+D82d/GYJGQ9bsOe0n9Qjw319zWRu4IWrvPC5mvVzVMkSUj4SkFEsvl4/EJUq7wRmrvae82MBF2d8SF818JBPyw79eRIrbGkB/VFV9dgiJ7cR+z/o7j73Wj/N8umq+TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318308; c=relaxed/simple;
	bh=9vax4mRv+ZIHx9WFJYIjJgbBCYugCcoMblax+rJ6408=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=om0ZrOURga8RxYwEh6ooVajdBfk7dAE9sH8Y3dkHQxUZ8bRMWdREljCxUb8D78dnB7vPRpFt0cVPOKvtl6rovfHx7fpI3uDclM56fGgbJ8WSpg4x2AoJv0e3d07x/nSogUoVjRG2PBherL/Yu8UNgwgLtBAMqQBQN76ysAhGa60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lnd1Qlzm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bKAjitIK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C7dwQF509627
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5JaLhYXw0RSXyl2gHloRFM3B
	UgmsEhqsm6iB6g8egXM=; b=Lnd1QlzmusBjpLTIR+/GkEHqWSbl0XZt6swzheJX
	IoYvkTyAEA5anKgktQqLxsOTcvDfH3pKLaV1qSoIw/Y3lVyfViQNZ0KlsJ/Tn60F
	twGItt6651MgqmjmsaF6fALkQN5iXh0PYM2gRyH2i+zfsfQDxy3t0xRCnvCITUhZ
	m8tVALhoJ45eLO6chu7NDrHElYCIeY1/SxCE7Q80UUDMV1qwlnqJDrCSJJB2x1MG
	7iG1AZs0tJI8ZkaQmBi8SRsokuFCJgXPVapdP5PzQlrBFCmqTrS0t8kZ/OussV3A
	nOxUCeOlswfnEhC9TgJYXYDicH6pwWkyIAe885Jsimd3iw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w0qcn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:25:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd98d96382so110694885a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 05:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773318306; x=1773923106; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5JaLhYXw0RSXyl2gHloRFM3BUgmsEhqsm6iB6g8egXM=;
        b=bKAjitIKVgTXV5VfxqqPVnkAY0Bw5d0+V+DJ2ufGeYvGm9rmyJ/HR0DfJE8j7YZRJM
         5Pf3ZmwUjNiAuFG3gdLIB65D9rTb7EL/YkA/XguXh8VM99QUHZJFFIahxJuIEu/sQb5p
         6CtwOFNyxGOnbpPgu5Q8T6hu+VzmJ4nWvDlBDvTUEL5eRzts8ZhzEB9jFDddyGTBBVK4
         Ms0INgseVZ0N8KP3nfa91ZfxTDW+TUdLGuqsRvm+Ynv5G/x44bCjzFE+wpGhFYASC7gf
         whx4Kx+WbEReFct/1JI6rjFGanAWsf8ocfapCyRkvB36bIy4WXtyWnSWqIidjFFMYsXd
         iYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773318306; x=1773923106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5JaLhYXw0RSXyl2gHloRFM3BUgmsEhqsm6iB6g8egXM=;
        b=kKaGyWMqsG2YH0XuFWA9K6wh5L4ut77skFGQ4AtFQjW4FhILkWIOTcmqbE53Z/WUBy
         c1mYYi+KrSm9dAoSIzbG8nQ5iLTOCR234JjDw2ZPW3GhIAzu2Ri3VJtK8hwnz2DVhCZ/
         7tKdJMBCmlUl7tprlezSR/YeW6Fihvw0lOcmRSZkNCCi0FEsUSHwH0cq4MG6DYku9EBM
         +eJoB6EeLj8B8JNj2IWCdYu+9kEnlKutDvQzLPiLlAQBQxxMs/9TqU1+sI2GmUfKLW4g
         ypQvaMaDwqqHe6XCyCWyhMj2VrCckH0iYNOodnSg5kV2MZ/Nta97+9d4DymTQwIdNk7m
         acJg==
X-Forwarded-Encrypted: i=1; AJvYcCX5G93e+JHJ4vcaA9Tm3ZkfFGmGmnpqjy9X4+SMLfsuSrWBfCRrLkV8f3jS7svoUxGw3BfKo3y078QH@vger.kernel.org
X-Gm-Message-State: AOJu0YwTgUhrkMLLQAL1iLLm7gsjY5Z4mFZ36uT0x+YkEfgewC3gLPy1
	mZKk36tQkTdDzh8wUMyiEKe4+MHRuVnir5PpSlTPyFOaz9QieU0Xh+9Y0J0mUIoL1hEXpEgCZm1
	/pQfys7ozRlMGAkzZoRmmC6uYpQgQ53DAKISF6lQYN14L/a5W6dekgGIQrQxggCAv
X-Gm-Gg: ATEYQzzckZoTmHXwpevtz669/jpwTtGvnkc5UWpfreulHgcqWrn6sBD3O7Nv424TcVg
	NzcH2mRgT9pNDKAn5Chh1ZJgvPRyxcrMZqvTqKxVul8yAQrgkFm8QI3ta/nZDBAxLhYj28WSTy7
	bj/30eweLeOI2wJoISKXbGgjl8WB7kr9SMhdVsMeB7llSR/WaggokRHoJ+Dk0afsR6tiSSdGnig
	RjNmG1/0ik6EV/Ui1+rmg2oyaBW3+wlewoSUQSgCbFLnW0NBcYfz8Mp/9pIvAdvimx0U/md9sst
	Wtp0EssC7mpaz3TOHz7vwcrX/jpU4uGboac+pd75bPBTYnnghwV/3RVQv88lObYXvRFUGejssgv
	iC1jnMvwHZMNGghH+yG8Tot8jqir4xsSRnA==
X-Received: by 2002:a05:620a:1a08:b0:8cd:8f04:50df with SMTP id af79cd13be357-8cda19360fdmr759621585a.12.1773318305752;
        Thu, 12 Mar 2026 05:25:05 -0700 (PDT)
X-Received: by 2002:a05:620a:1a08:b0:8cd:8f04:50df with SMTP id af79cd13be357-8cda19360fdmr759617985a.12.1773318305164;
        Thu, 12 Mar 2026 05:25:05 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm1048144f8f.36.2026.03.12.05.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:24:58 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:24:35 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH RESEND v6 0/6] clk: qcom: Add support for basic
 clocks providers on Eliza SoC
Message-ID: <ermbzju56beeuah6u6ezvkeb22c3nriqmgnbaxivfczqpkswfr@bc4ukm4pbzls>
References: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
 <177326259462.44574.3228852589174701354.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177326259462.44574.3228852589174701354.b4-ty@kernel.org>
X-Proofpoint-GUID: jVrJiG_-Hir5GMsNwi-dT2wnw0w78Z0i
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b2b0a2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=o3WNsQfHC4QgS8L6BeUA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA5NyBTYWx0ZWRfX9J2j4FHkoq1r
 TbUmyNruF837jr8QTOZpJniCjroTXcUiAuXNlyDm9BVSrQNYGeYfHRR+hz6O6PwauHw94E/QW9W
 TSX8HvfQVKfUingR+3IAL2wwtJtd3gPgKCE+n6+tgH8uEv1vHIoIBXj4LI1Ru7BPtFV6WhJYmuv
 c2yD2NwrgKLIUhG58GSYbPp3fo/4dj8qigaSEeZxSt1PZ33KeivpKY7uCTNg2mqLsQKeEak2J/G
 BWc3+YmfQfdT9BO2nW9XXYdYV39DRRkTuz2A9rNp0CobxrsiGOuV6kZHA2NdORBsPSyMSd2DBOk
 u8dRGCuG0kYs8xYztBJwXv2akK173ZPVyYP10lYTc/9dOi35WRMscJq/ZgC9jX5OOpfRAh/d+Bn
 6zYhEzxTSDGhytJryibsoPo8/eGSoe9CdLox+s/BEtwcUWvS87dFIQ2E2ilFtg2iQzj/rzrmYuZ
 /uCHW+CaR90QAhrY/DA==
X-Proofpoint-ORIG-GUID: jVrJiG_-Hir5GMsNwi-dT2wnw0w78Z0i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120097
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7A174271BE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-11 15:56:34, Bjorn Andersson wrote:
> 
> On Wed, 11 Mar 2026 16:46:30 +0200, Abel Vesa wrote:
> > These are the bare minimum clock providers needed in order to
> > be able to boot to shell and have the rootfs on UFS.
> > 
> > The multimedia-specific clock providers will come later on.
> > 
> > 
> 
> Applied, thanks!
> 
> [4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
>       commit: 76cbaa6557b1e685a268f08f892a35004bd4fdd2
> [5/6] clk: qcom: Add support for Global clock controller on Eliza
>       commit: 3d356ab4a1ec2d9b208f0d0020c79855097b1fc7
> [6/6] clk: qcom: Add TCSR clock driver for Eliza
>       commit: c69a586344758f0d9cf0526d2a4b14fb56941b10

Thanks!

But without bindings ?

