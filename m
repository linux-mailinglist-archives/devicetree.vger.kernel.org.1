Return-Path: <devicetree+bounces-276746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FKrE0lzuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:29:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B30E62AD0CA
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:29:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A778301F9C1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8ECF3EB7E5;
	Tue, 17 Mar 2026 15:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mc/6dmIS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rp4qsZA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752CC2DCC1C
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761124; cv=none; b=se+n8+y1SNxO3vMUxgKGijHp+rocBEsfvNDJwwrbXjX+unz+DKogYkHy8FgoaZyBcuBkmdNvG6x55ILvz5G3FI+zzrEhxDA8wFJmtmAcc0Bvp+hAAEnaZd75E6szqDhbAjnGUaTCh7Wfb8CSCnQE0mb0+zPh+diIcpJdaSH0tSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761124; c=relaxed/simple;
	bh=5zZt273oo9l65sLsgEyn+0QToiLZA55xazJjFHmPD8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r453w0Xae4dD87eQM4vP8hT2kGpeqlOtaa/tt8WVQU0cbvY6lz2XYlNf/GIWl/ZW2tma7OTyHN2UYs5jKGQBLJ/xTqha3bb/VEa+kZIhaHf/uzDsnNIwpo8kAUMzWOPmOc9HmNchTbhUa1IDzCvxocqQA/UqLEPUvWRgMshN/4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mc/6dmIS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rp4qsZA9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HFONRc536963
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n3lpfc4ueqzuBt3BqwnPtUpH
	55c6lU1lATwBcd32nv0=; b=Mc/6dmISUtrOSPwPhVr4of/6k4S1ghAAnxJEaVuH
	Rubk1JH3Qp7rf7yFYu3MyIfyjlaO0r+fSAD7Dt3P4pvofwfGT+mPMV2TlcJTISlu
	moweRD7YTE3g8tCoYArijKSOIk79DpPQB9qvJufrNr9bBXkAtHCsB7UO4ulnrta+
	+yNWuNiSvcxgthxQFjIh0OF3V2IJ3KcMxt3ztVoonKjPR7etMThOstkt/u8Lfz7P
	/f0LHPG4LeURWFg6GmrRq80BXJ+aRiusih6BZIXRZ5BRS9SE652fUaphh1xzh0BA
	MYh7d/WI03y5ycPRMdRURei3jTNZISgkUgRAmdQsiHzISA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy9jr0052-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:25:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35b9e111a75so1297702a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773761121; x=1774365921; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n3lpfc4ueqzuBt3BqwnPtUpH55c6lU1lATwBcd32nv0=;
        b=Rp4qsZA96MVRfZHgWGe3/5f6NoscXXyKI+O6DSQ3DFygVAfyoPqSkmVxUtbrZj7l8H
         raq1R46mejeSX9kI2caRM1PkNsZyGtAU+SoEoGl9IxNILkeMmvqfOCVYfXCeb/hw7DCl
         zja1d58sO7w638tuBGAg1Twa8g4d2pCTQQuOU3EEi3JVh0MaoncWGjyiPYj5prbfgUbm
         A7LE0TzK/Rx+zszi6PaaFxLlLvpuGCbDuOKFrm88ObmFUldtQbTPVjNT0Ad9d5kQ2XxI
         lDLq/OmU9ebVrfRexDOSqdw7X0keKV4jSTsuwDyTFuktduoqXTTSxUIOBMONBZBZyWJP
         xFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773761121; x=1774365921;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n3lpfc4ueqzuBt3BqwnPtUpH55c6lU1lATwBcd32nv0=;
        b=C8ZUcWbWmyeQwYYsbddpVUVbv1FpvzRxv+rmQ3l91WvLNlFplWzas8HGp1yI+aopO1
         d6Xu5EugOf1rkIH9JOkHLfUfIF8R4laYBoev6xiD7nzbUmb0XawzNRnLo7eL/cxtw2S4
         uinlmGW34a+ZaMJYm9wtFoEIloxa1/qTsYdaE+Q/iPyRt+qv7fyEnjNOxWfBaMSmb+GH
         yevurZ906GBqOzb/vSSR9GbP7vfeMZnzO4tHRszGNgVdWYF4oigjuLDvWTbqWr3PerLy
         XbbJLPaYBKidBXHzoiAyGcv6PVWReMqakVVNddWgjNCDMOtqY5mVA14QzPYQA2rrhwu4
         k5TA==
X-Forwarded-Encrypted: i=1; AJvYcCXCqWxNesNQhEI02HSVAbVUVWJRTsLGpXer2LgF2B7YMR+P+UL5Y3zLs9jDKUqmMGiQwawitjc6zc8u@vger.kernel.org
X-Gm-Message-State: AOJu0YyyOSQ4Q5mGSKR6xIdE639tL09eT2DXmUWZcmXOYL6ECzqwLJA/
	3gTvftxyrl2P4XhGDOLOwdLhP5YqdxXhsNHCoF26Vtq8FtCznXhgkQyWMRw47KcFO/DwEu5bwz7
	f1cOhnkQS1uSHOw7FIr/2yVWpDF9+aSzbjk9OCNKQUEgpMN6Faol7m53WXkcZwzEi
X-Gm-Gg: ATEYQzxyUYY67Mclb4xcvW8L/cPyjf+0chZoG/TZ5Nq5Szr3VsoxgeLo8kzNRqwqiGS
	axRJ5UUpNjRRyGaA1TipPee8Wlydb6cpRqPaMljSdzcwrY4l9DC/q0MS/uSG9Y5NqX6NA5lgT1J
	AbUvWwQ8qnA3Qo7whpUiQYYaLCV6nN09An0j+5L0EECHgnfCC4H08CewUvvVjC7rl92HE+05OBW
	aomc4BnVKHnPehLCnjby14MoPP7CeWih+8pQJrV4+2eSBgbvZvEmGvbcmjWGgwMXUn3Wv/Aim6W
	uO+Kmo+/4rxH27zosIAGU4ZXYytI+fwJZflqh8MAPcItHb1XX56FBqnyP32cvWVh7NCYBTCcZYW
	s/AV9M8o90gd2UMrO9AVGqPu6N8EWEkXxkad1J/IiINqFaDT8DqPxm5Uhk3Wdb5ze2UuPpitXHl
	3zFpaPPKeyk7+EuMhJh1Ig0Veqz0TJx+x8YWtieJvesQ==
X-Received: by 2002:a17:90b:4cd1:b0:35b:9c28:fc31 with SMTP id 98e67ed59e1d1-35b9c28ff5dmr5852699a91.4.1773761121099;
        Tue, 17 Mar 2026 08:25:21 -0700 (PDT)
X-Received: by 2002:a17:90b:4cd1:b0:35b:9c28:fc31 with SMTP id 98e67ed59e1d1-35b9c28ff5dmr5852650a91.4.1773761120441;
        Tue, 17 Mar 2026 08:25:20 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bada5d19asm3480211a91.8.2026.03.17.08.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:25:19 -0700 (PDT)
Date: Tue, 17 Mar 2026 20:55:14 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Message-ID: <ablyWhg578n75gYy@hu-vishsain-blr.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
 <617cc5dd-9012-407c-8579-2c08fc629047@kernel.org>
 <ablgwa53EVBD9HIO@hu-vishsain-blr.qualcomm.com>
 <fctd6mwid2r5thbo6nipbpdecdvgvv4kztjlrp2kibs6j5agxj@hn52hjfp33zc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fctd6mwid2r5thbo6nipbpdecdvgvv4kztjlrp2kibs6j5agxj@hn52hjfp33zc>
X-Proofpoint-GUID: WFmywFziIGLZ5pFTRGrE2Kp7OZpZ9Dv-
X-Proofpoint-ORIG-GUID: WFmywFziIGLZ5pFTRGrE2Kp7OZpZ9Dv-
X-Authority-Analysis: v=2.4 cv=NdjrFmD4 c=1 sm=1 tr=0 ts=69b97262 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7JKd70EdTwDnvNzRtCQA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzNiBTYWx0ZWRfX8lV7hAoPpCc3
 zPby6t8ohbdwGSiLAPlakmG8TWautb3FfU6YQ1o7zDGa3SHrDUTCl0DZY6Rt/eowMnaGxJpxTPg
 KUeku/H7gxWAdZp9S6XG8h2Yf5RkX6hBicQA/TEC8QdDsEUqok323Txnwp+lqyyXyol+rg71vDq
 sQwxsLV+lxrapsugcNCPoiY6Vl6YmyaoqxQPwKfIZd58+zuHbuS9ddulzIkmZOaKwsmOqFqJVbq
 zXH4NxIJqK5ThMyvlWkqwHFMdDdZQMT+5HQyI2S1BM6E6ObO5DLhjFe6r1POrnb68uovZcbwtRk
 kS0JhtgwvZPXmHBPNLtyiogTWmcG43II+Wlnbw3YSz8183r0ncl7XiDlP3L2dfs1WnjddbG06Lx
 CykniWJprI4D3T7hH5ex/2TOR4KJlPleuyxhcSxOF/7tqGdx3lP4Bcuxb1Tla4EAXGz8V73OwiQ
 oRiJM0QecjRJ+xzy5uw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_02,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170136
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276746-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-vishsain-blr.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B30E62AD0CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 04:40:51PM +0200, Dmitry Baryshkov wrote:
> On Tue, Mar 17, 2026 at 07:40:09PM +0530, Vishnu Saini wrote:
> > On Tue, Mar 17, 2026 at 12:42:24PM +0100, Krzysztof Kozlowski wrote:
> > > On 17/03/2026 07:03, Vishnu Saini wrote:
> > > > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > > > converter. Edp PHY from monaco soc is connected to lt8713sx
> > > > as input and output of lt8713sx is connected to 3 mini DP ports.
> > > > 
> > > > Two ports are available in mainboard and one port
> > > > is available on Mezz board.
> > > > 
> > > > lt8713sx is connected to soc over i2c0 and with reset gpio
> > > > connected to pin6 of ioexpander5.
> > > > 
> > > > Enable the edp nodes from monaco and enable lontium lt8713sx
> > > > bridge node.
> > > > 
> > > > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > 
> > > How v1 could be reviewed already? v1 is the first posting.
> > This series was reviewed previously, https://lore.kernel.org/all/20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com/
> > Maintainer asked to submit a new series once dependent patches are merged.
> 
> The patches were already sent, so this should be v4 at least.
Sorry for the misunderstanding, i will rebase and submit v4 to previous series.
I will address review comments from this series in v4. 
> 
> -- 
> With best wishes
> Dmitry

