Return-Path: <devicetree+bounces-261924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAYqDZH5gGn9DQMAu9opvQ
	(envelope-from <devicetree+bounces-261924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:22:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1003D078D
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1D85302BA7C
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 19:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6DE302766;
	Mon,  2 Feb 2026 19:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hege47Hd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V+GZBBeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577EE2F532C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770060154; cv=none; b=F2KFYphm93dxo9hhWwGzJ+LDzjeoio0rtdA4+WLD1Uc8+VXvwwkdGyqfr7Cw0CTIQVThChRJ0p1quwdxCZliIGQPuvWPmOYjjXxXjsNMCAO3dDP+JZVc1eXHWzL8hjvP0tA6Rk1KS302fmqjA6qgAsJ3q1WeDcQ/mjawGSN6FYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770060154; c=relaxed/simple;
	bh=DYOamzKGh7mXxypwNElwACUDgdhs4fTQAbquZDHGhlg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M+LA5Ps7rDQlaRcNWJYfD512Y/wyuhEozXjiVazG0xlyBM2nxtR7KUjcTtgQBokXs1mk+cSCvNYcOClXIVPHtifiHEOGexKOTiy17f3YJy1jn/yKbd8L6QuPnuKZqPdPqDSPIBFJRuODEyOvhaqGMaReX+gn4fziFxog7cRP3Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hege47Hd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V+GZBBeg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612J3f7h3915985
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 19:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=btWkS/c7dprwal4TPhyVpLCd
	6iARVOljRFkoRjoQnrI=; b=hege47HdG5UdDYNVdtzNh0EKWO1NWXkWYrNDKUpJ
	qZgcCBC1kRhLgqFNwgfkpmDbP1q27UF5voi1xmqP7NWXRQE7r/DVpga0Dmd+ojH6
	bDc0QXrXmBhFhGuloC55hF9gQllwqC1SBIf6CTL1MByFiBxVb9qy3znG4sfOEfwc
	PpeWGQ7Uu6cjSRffjRcc0Kl+69DISyFB4a1HF7W0pLIltEkleVjC7zeHnUEa+Vkr
	Dy39axWd4Pv4qKTT1p5PeGvD0lbLSeQ6Dlfmztz3lGUwOFia+IGX2iGRWemg5muP
	x2Rb1ET+nDPs06vlrCAeKFsJJJhXjFr6vXIRQOVZ3mELMg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmhjsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 19:22:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b315185aso898906285a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770060152; x=1770664952; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=btWkS/c7dprwal4TPhyVpLCd6iARVOljRFkoRjoQnrI=;
        b=V+GZBBegDSpnnZTb5H+sm6BgTP/zi2382WgYfTQprtwJjdq1cQaK3u1fW/FAt6JhYY
         Gh3ANB86EMlQ04GPcaiZ0Sn81zTtfTasu7by+ca4YltMCilPa20c5PzQp5WytjpEaaxj
         dO+r05kCwm2H9g1KUXx6GTlSKTL79tD0ncjwLi5TYtATAed40/Sj96h0KisZU4Gy0g8A
         c1mbFP1J8PJDu/i4WX4CWDHctGoLxOfnlgUC1grOA2xqnKg8tRit0L698yzo3u/lhnf1
         dQ2C3pOFmXM91u15SpA++CJud1Xg3/VhoouF5VUE6L8R5qhCBH4LZAkwCzdTNmhUeJuc
         x8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770060152; x=1770664952;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btWkS/c7dprwal4TPhyVpLCd6iARVOljRFkoRjoQnrI=;
        b=sk6qXOHyX274zKAusqa6kYtcpbGu1aMy+meNYUOqRawIye5eZwtnUbsi/d0RChnnRw
         QbjI4/4ZdJgCdp42UmlRUSNePtguiLayZd2zkOcBHqLyoXEPr+iNDua/puhX1qJUkrLF
         2jv55u79MZBQw5fIRZ5BwONmJA08GdKLNAaf00Xzu/BGoXO16BcCr4HqalMlfreTDFYY
         2i0qGje2UkIiE+4hi7iI05okKuaOURl9b10e/+rL+v291uArnEC+JU3iu5xXtfCT21wE
         aSBbJW+UwijU/Yy96NCUjoQdm5yFaMFVXnEGlyCJdOTI+UwfZuKF18QxgMvPq4PIsa/L
         adag==
X-Forwarded-Encrypted: i=1; AJvYcCVyVADAfofKQVbNlLEwpqe+2QBV5ZHqxvbt6hE0oaL0Ei4gFrZ4O/uNfXIzrIwvg+p3jUzbEWF0hHg2@vger.kernel.org
X-Gm-Message-State: AOJu0YzEym7zsB9Vu9HS2dstfQSqB2Zd8RkeaXbLTxQT93YX5NmCsiSs
	DesCiCVuvZMpU7ENhrzcJrWH0qWGL8En4bPliEtWIAjXYua6EH5whmQfOe+PihQOlVGG+K58mQT
	ejJKdjl0dZLSc25Sr/spQau7hOmFIykGT5f9FkRxiLLrx/9pU/AZIr6YW46S0WiWW
X-Gm-Gg: AZuq6aLeCVjZCiXuw+16RfzMIbW1ybhCgL/is67geCfKoc0BMVXtkoBAKyzNd3pUIcl
	dtCpfK1U7G/Ydr971zr4IXlfE1Ore4g3YMlfLdMCfyh1AI3EW1/P4z6qDAW5bWURNroFYFZ6jDo
	3J96Yn/eDTZPFPJUwwOZ639l5ezPadmtJD/ISW0jRr74rJRbhA9jNl54KVl/2Bh16nIzLFnFVJ+
	arnuKxcpjHW7TNHGILtTmz4ZTJty0JAKWz9cqmIv4c8Hl9VXv0ki+f4WI4UpFh6io9uFGjDvjVx
	dLPacb/4LUpaBauwNS/qIzvf4r1V4vynCnkG+tpTzqIxvmcp0Hq6uhPKKaVnD4telkhF5hsL0G4
	PjqNcuH7pHm+dlUGb06q4Ug1ztJwgYHiROSzDtL9mJjAPVz1HKfcPOhQpBpaz6pnxXKhENpc6/K
	+LSzyB39cVUI7omZzTeELI1zI=
X-Received: by 2002:a05:620a:254f:b0:8b2:e70c:427a with SMTP id af79cd13be357-8c9eb2fac2emr1664619485a.44.1770060151809;
        Mon, 02 Feb 2026 11:22:31 -0800 (PST)
X-Received: by 2002:a05:620a:254f:b0:8b2:e70c:427a with SMTP id af79cd13be357-8c9eb2fac2emr1664613685a.44.1770060151233;
        Mon, 02 Feb 2026 11:22:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f8b70esm35186351fa.34.2026.02.02.11.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 11:22:30 -0800 (PST)
Date: Mon, 2 Feb 2026 21:22:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
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
Subject: Re: [PATCH v2 0/8] media: qcom: iris/venus: fix power domain
 handling on SM8250
Message-ID: <l6o4lv2sy7x4g33mjigeh6sb6cmrfyz3xshhmbc3el6qvw3oep@okwpfykypawa>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <CAPDyKFoNX087ZhLkQ_n8-42WNQcL06noSuPJPDG87y0andVdNg@mail.gmail.com>
 <CAO9ioeXkhxjghtGVGsOH=1hwC5FvS_4LEXt3hmAEuAbwVjct3g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAO9ioeXkhxjghtGVGsOH=1hwC5FvS_4LEXt3hmAEuAbwVjct3g@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6980f978 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=AedQi1eqkiGwAd17v3cA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: H7oodzEW0oFdOaXMo4vg50xA-FIhQeWT
X-Proofpoint-ORIG-GUID: H7oodzEW0oFdOaXMo4vg50xA-FIhQeWT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE1MiBTYWx0ZWRfX/aX/dQnoNdK8
 pPR0Qcq93CeTipF0MRZuZzDWmcHeBIm1cgRiORGA6qVIZJYvLm+1N/GlCQvi2oNJ0J4KDiCo2Nn
 HzTdLg8BZTebKTvkNqYetsmk+Ms7SDOmgp/s2T/9viPSA0rVMKqjA9R6DV9/8AX+UKcO6rU8b9/
 X81g7HtfCrfBx8of9J0skkhxWJRdtWpA8InqUDs0BEZRFb1QoMsqv8TBpjUUeenBnK+xmECJXeW
 wTp40oqoVKwgbcaRO08tDJ0DaP9jFnfE9PyaiRTwR3icqiw0r+9mfOmBJOvSH9DuSQM8XvJQvAJ
 0iPXnPB2hAv+VHP21ifh3EBLHfM0GwtM/XB2GFUU71+ehToRrvqdG98AcdS7W7kRbhq4jrmMt+s
 /4siuHyRG0Bc77r1rpdAH3Np5z+MIxtOpxufforEZyh/xUrttqYbTtPC9GpiDE1uw6r6hEAyTE7
 FFSO3QBWSTJZdNlx9ZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020152
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,linaro.org:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C1003D078D
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 05:51:16PM +0200, Dmitry Baryshkov wrote:
> On Mon, 2 Feb 2026 at 16:46, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > On Sun, 1 Feb 2026 at 11:49, Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > As pointed out by Konrad during the review of SM8350 / SC8280XP
> > > patchset, Iris aka Venus description has several flows. It doesn't scale
> > > MMCX, the frequencies in the OPP table are wrong, etc.
> > >
> > > Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
> > > stopping it from being overclocked).
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >
> > Do you want me to pick up patch2 for v7.0 - or what do you suggest at
> > this point?
> 
> I'd prefer it if it is picked through the immutable tag/branch.

Another option would be to ack merging it through the media tree.


-- 
With best wishes
Dmitry

