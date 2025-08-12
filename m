Return-Path: <devicetree+bounces-203860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3076BB22B1F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A4C1A2787F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAFF2EA498;
	Tue, 12 Aug 2025 14:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MqreRUwJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F34621FF47
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755009944; cv=none; b=AlpbVAC9hF9PEO1ntp+QUulcDc9klacwv6qZAIrbxXZEXZuLOfo2LQmSK6pdLYot9enlSTf/t1Ak7eoHX27CYuMJytX5hl4RXgu3aSERxuu8F0Ej8M6vEsHlYEmIjVqX7iwTPPOfLqZe2exHUjucoQjsLP1pQrj/n9tx2qRdkhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755009944; c=relaxed/simple;
	bh=BsPUwKo2RgN3PIB5w5A0XiTeMyiBfC1bkz2j59r34M8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bxBWtC+HmKm0e+w2Q6YU+7ga/REpsNkpuDJK26ngwCYmQ7HmzGQUqlku1Gd4iby5is0O2DxivalFWHsL+FNTPvwVpoj++PAYs/XCwTWqYq0tGCuHlyaQIZVukNPRL1psKnGjdJqaGWKmym7cSYc6NDh22KTJX9yGWvqJYURDacs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MqreRUwJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CCLOqs028989
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:45:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xY4ybwBZU/5eLYxDAWc6jB33
	jh5tMDovV2YsVXcnASQ=; b=MqreRUwJQGKu/vdT+4GzlA2RsGs00SJaxFKBFkSs
	1JCr6oWHCxv/17JbdIMePea1ftaQcRo967TDVlXOQL3K95XXKmeTZblSEheh95PI
	1iKMKwTHg04dmOwUAghBgPb75ODxB/143K6b1fRiiKAgrB5U5CSwia/CAvbxFZur
	r8/a0UwTE6KWuknjsDZdzi7n5zVfnVw8VcgRQdXScQdoPNtJM11LpIWs/VYfl+Le
	Yi75uk+BCbulUkBglpf0lo9466nxj5SJgbDPdEOSmy6pvQNWdMHDwlmmcJ3aALnf
	Jg3nQP2T8rc3hY88F5mEIuk1a5/Ya1qzyrHVfXtr084wgQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hm8cyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:45:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b076528c4aso61475341cf.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 07:45:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755009941; x=1755614741;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xY4ybwBZU/5eLYxDAWc6jB33jh5tMDovV2YsVXcnASQ=;
        b=sd05V3ro85YYKh8XhICn7pa5FKR8pkLp/qAViI2zAyW61jG0kSEHi0breBJVmvbSIk
         vqsqLMMX1SBA25RBhGGMBAdc8r45pGn9+rLtkAJe5xJv9sTDZ+HVm9d/PjEdR6nsgax1
         c51EYC6yFCdzNbzpJUr8X4SkA6jhibohv8RdtIUCsJqgIMbyr9poKhi1LVkH0X16bgQ8
         6teh05NbF1sUF2oubMVG72KPsRTLKMV/fKkCeAY/0ZWdsbIBse+R6cGaJ/kLsy40r0AU
         YIx++aJWFxWHFm93eyDU4qyo7h34/axtCNhot/m2laHxfB0ka3TAJE0LLfm0+/h56QmL
         Wwtw==
X-Forwarded-Encrypted: i=1; AJvYcCXia9KnMDENFKhazqErr/lf3AHkAfw8/WOles2/CSivB3A72GhhYd0guNyYWVsJGf7iLV5b6FUQQHnG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4N5mnw2z1IQFkybT2vW9A/mMsaA31dBCVT98aabM3YbUZey2M
	jBC4uYsLK1tcrF3O0ET/HiUN4rukNL15SZC4rJV8QyW8L+4qmfaa/wIknfsoD0H9efPi0dBPG4v
	F8bmjL809SJygSK40XriAy9x5qZjJwcvw5LIaIYZxoj9SXBVyniRHm48fa5sE6iD2
X-Gm-Gg: ASbGncsXiIkncdvbu2IBu7h1k9aLYNGqMMPyfAde5leDZIAwXV+uTZp0MZBComEAGBU
	dBl0syjAzIBAxcaRTLiJu0+vmNa13WtJPvfUe8QMuGAB4odKVkrW83RmA1S5Fg5Gb5cncMzkCpU
	Sc0IK5ZT/X0Ai1srHeYlJlzP9C1WafeFuf1Qz7zFxuPhLW1a8Ur4wA3eozev6p8C3kT6+f/VQld
	WeP5wH0Syf0ZYSM15fMRayrvL4LjOxHUcEtB3OhHmWcq4sBFNF0LdaIG8uGkKkZGbCxAnalsgDj
	lKDd1Z5UBg3p1VUeGyS3YBrifrF1GfskxeuXR95CvM1kPs47VP4wcECS9opOLBeiC/U9Xzhlmli
	nG6SaArAtEKzSSR24eOY3noX/VFWnJrYzG45jx0ShNlSIxX+BUzw9
X-Received: by 2002:a05:622a:2446:b0:4b0:7ecf:beda with SMTP id d75a77b69052e-4b0aed0bff1mr245432181cf.9.1755009941235;
        Tue, 12 Aug 2025 07:45:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmYy8rE3bdSKUsBvaAM/ijKkrxlBj6I9ke2X5s/PiaMRaKBrdTRaQVzxnYmAAxXiVyybZVRw==
X-Received: by 2002:a05:622a:2446:b0:4b0:7ecf:beda with SMTP id d75a77b69052e-4b0aed0bff1mr245431671cf.9.1755009940667;
        Tue, 12 Aug 2025 07:45:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55ba00b78c0sm3769141e87.68.2025.08.12.07.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 07:45:39 -0700 (PDT)
Date: Tue, 12 Aug 2025 17:45:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Describe the first PCIe
 controller and PHY
Message-ID: <xirkug7igbf33nkxtkpdnma5wsepndasmka6fp3q3n6xsk4npj@jucnjfd7bqc2>
References: <20250811-sc7280-pcie0-v1-1-6093e5b208f9@oss.qualcomm.com>
 <8d5eb27e-e299-4fd9-a591-2d90f4693838@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d5eb27e-e299-4fd9-a591-2d90f4693838@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX0wORw7kZ3XCn
 D6qSKb7bV1iyam+y7LfBZOR+6Sgw84/6/0eSkKcbewQ4jvf4FOOum9atCcNGx460vcRnbbVEo5e
 tIAB6+ih0LaclOnHYYl9mH9LNJ/4wBxkDlG1nMA/uXRW5ea9Rd6nShdNEESk9uPvF59oJGqzPae
 +myfS+V25HEISoBgiIy+UGdlWJiN7txD2JTcdjwFygEANuONn26W0fC9DLZ9ZPa5HdTNaR7TuZx
 6fv7npmAI8pPsU6UEdGf9FkswUWtWl0QjdNo7EW5lYnU6Ty5wnQtQhL2Kb5hlXBezjckIXJKHeu
 sP2FyCcUMGGL1dMtu34ZDY1bKY9qAq18up/x2zP9xNyZjf9Tf1ywmlhIt7a+t9LNsn0JhVuwy18
 W6hgruNI
X-Proofpoint-GUID: OtL_gUkYDNj9yH-c0sj8pJxR_Nxg0F8M
X-Proofpoint-ORIG-GUID: OtL_gUkYDNj9yH-c0sj8pJxR_Nxg0F8M
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689b5396 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=QUNwyAoics8Us-WNJDcA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

On Tue, Aug 12, 2025 at 01:34:44PM +0200, Konrad Dybcio wrote:
> On 8/12/25 5:16 AM, Bjorn Andersson wrote:
> > Only one PCIe controller has been described so far, but the SC7280 has
> > two controllers/phys. Describe the second one as well.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +		pcie0_phy: phy@1c06000 {
> > +			compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy";
> 
> :(
> 
> BTW I noticed that Krishna also tackled the same issue just yesterday
> on the internal mailing list.. would you prefer him to take it, or do
> you want me to review this patch instead?

That means one thing: a lot of our engineers don't need to post patches
to the internal ML.

-- 
With best wishes
Dmitry

