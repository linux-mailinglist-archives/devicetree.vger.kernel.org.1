Return-Path: <devicetree+bounces-260395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COtfIEQEemlE1gEAu9opvQ
	(envelope-from <devicetree+bounces-260395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:42:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C283A163C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 182913020010
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C91B34FF7F;
	Wed, 28 Jan 2026 12:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NW7Cn3fH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="arUvvdEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1CA34F49A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604105; cv=none; b=a9bTUtBSRsASsa/B2VrP88lzC+djzS4ink1HNz64Es0VEdacc38yXvJGTrF6iiQMc3vUIpzt/txllFv0ywgGhBbbZT5CAkTfPRbqXUKCwqo1teV763xk8DCCCgCt62E4EZ0w9Dv/MklRjQUysHDIv/egmg/NbJ7eBv3Dyb0MDAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604105; c=relaxed/simple;
	bh=uVuWuI37UTgDyI8yZay7prPi/q4tr+m3FAWWTbZuIhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MutYB1fPOInmnMYW49LEn2NOLE1XRqo5orwMwpqVTzyvG31dTeE9wVYCIYQ5UkyQy8Db6J2iH1fWMpM9AUC45Nl59++SciI3kweTYUMZ+70chRnaedhSRKUCiEZOpFvmWJqS8VS3y6nKHRm0uJzwkiiD5u832K1Ah92kXzTBYDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NW7Cn3fH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=arUvvdEt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91sbE3442499
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=; b=NW7Cn3fHtWCkTfEv
	xUSO3e2o/hTeDByXBhngZsPvUM5NT5K1lToWt0WwmVUnbat22ryjdfyHioN/4Btm
	T3P+Z+x0Mwm/bCjg9Q69qsFrReKAf7cyOjELivzRdNMnLkOD4d6J7sX5Fuw5Gs4U
	0xGfeggc9pGR8ctaiUfmExTyn2nY31Mbrv3x0OUjeJx9NYrlWoxj29bfcy9dCLyj
	b6vVomE3dGHYK27i7czbZvbV9d4I8otkxm7SF8qUz2GJXUo3E5piuYGAK2R+7Icu
	pPq3B33p5nSY9jjQVWkqBYLQwR3lveCb7H8ernH1H7jCG9ypSqPEVAXRRB83ZZnf
	mQ63/Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanahpea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:41:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88882c9b4d0so18468866d6.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769604102; x=1770208902; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=;
        b=arUvvdEtuRaa3hg3As0DBaIzeBeT8bYkOP2zggfZV21fHDPnsY6xBMDk+xkUASrQRB
         f5DeNtRkvsYn17wCJ6oXgrgpsEveDqSBsel0eEDFBvqylxk5PS0IQa4cd2UjKQTUgoQo
         vzKft7ww7knxzk8a61y/f+3o2+u3Zq2FSsOoD/8G/0jaOXBrX9Bd+XmyE+GJA+9Orr0t
         vo10VqT3H41yio5ROAWQi20Yft4WEoD7gSz3UYxYXj2PigIglMydS5XgoD8q9r38DQwv
         yC6z0fbqLC3uchUI1zYMNFoLeEERfDx5kL00STVOGybPzTYqBPcvD7Pqyo7Qy8ZphfcY
         lfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769604102; x=1770208902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=;
        b=ttGJs9vLxnpR3YAsem+Gp5sspSgWbsiW+v3DBFKbMij7cIgcbUVpAU8ciuykoH9p1m
         FiDpGWuWESiFRngHV0yKSTVhxCxhMMJHsnpfa2rEB6xd8Tiak1z9dU6P1gSCRO09SMOS
         Xr9osMwEVzu/zVWFydljX6KOt9ZGVVPgNORfpvc7rOe3MBQR3NJhcfhgmgS0qjTASIzb
         NS/eCscV+D5slApKpx+2pLQ5EwNooEIbVmi2KqxjYlTaCV3Yjv4vQNUACUj6hIL/1x+L
         rPk3sudG/SDxiCInFeP8D+M2C9phHqzQLOfTEiXlVQ4LnP97R9HZ3Pdcm172HO3WbV/M
         xVOA==
X-Forwarded-Encrypted: i=1; AJvYcCW7SAWyNMQJZpo6Q5p5b44OOo6/FYUsujrB0yaZ3q4aSbdG/6uvcrhV66qJ7qOko8CxCvNCh+bHvwc0@vger.kernel.org
X-Gm-Message-State: AOJu0YxA1ySq3T2Q7joWDgyyzZKqQ318Z4Npdv9HZAzxs7ez2OG7k9DA
	Kd5BsO29MLwZfKi6IBwVca4yND0QKdNi1YiaE2WDIoUseeuAKYWhbUxzGkBf3gHGphjOHlvncLa
	z11z6SpYve5I63QRju2rEv6hrN0MPxBsT+keJcoHgZYCfJBhp9OlkKzFVFOva3KHj
X-Gm-Gg: AZuq6aIDhJdORmlrWqmPKjEpPm9AmqmtVqnC36HEolZAQM0XbXVNtRUuTiqAjpnsV3w
	sYqXzdu7MqJt2qpIuYcSOe9CQcPGGpJQb2uTt8FF8eGLsUS3cjAoxeh63+Efti1jK91rvYCC+Cy
	XytuGJHbJAa6SSUOeSDdWw8yrA/HndUQ+6/0vy3l2v7I/ZBIc8WDL9CgnRMsKrPFfEriHucQFn8
	IqH++3A03YhntYiqBsHhk7TEZ2J8W5hEgq7+QiXL+fnvhJkClQSyjMzcW+jCE/yNRtGNcsFc06o
	S/cAsabSb/IbongLH35Z0g+EvWnG8LonGbWql1Ne3PKewgES9SnfG9g5jDHEq+zDtCXQF12KDDi
	ZIMl3yIYZ4Q89vLny3+WBBlwQC56jsGpnYoDlAfOyMyifsZgsZnfR34lj1yG7uWxAY3o=
X-Received: by 2002:a05:620a:46a7:b0:8c7:110c:762f with SMTP id af79cd13be357-8c71ac75eb6mr280285a.4.1769604102192;
        Wed, 28 Jan 2026 04:41:42 -0800 (PST)
X-Received: by 2002:a05:620a:46a7:b0:8c7:110c:762f with SMTP id af79cd13be357-8c71ac75eb6mr276885a.4.1769604101707;
        Wed, 28 Jan 2026 04:41:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469e6b2sm1438238a12.26.2026.01.28.04.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:41:41 -0800 (PST)
Message-ID: <795c4862-de48-44b4-9af9-6d9185a3c3ea@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 13:41:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: lemans: Add eDP ref clock for
 eDP PHYs
To: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
 <20260128114853.2543416-3-quic_riteshk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128114853.2543416-3-quic_riteshk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fCZeqQJbZ0oMDQpZpgjyCgXkuEJC3nhP
X-Proofpoint-ORIG-GUID: fCZeqQJbZ0oMDQpZpgjyCgXkuEJC3nhP
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=697a0407 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=3Q2R1SHny_ty92h1eiYA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwNCBTYWx0ZWRfX7KRRlhITzcoo
 x69h6ky0brPsZjolxsvZ7mAoNp/BnYerig6nbAAGAqwHlisL02gwyGsqvoVnDPupWSPe6qCocOU
 NxFxQSe/FcT2a5sWTLcOKIba7+QEVeJkmzyHdOL1Ml5EMiLBhxdMRL4QdcKeABQCq+tfyOLeoXq
 onTNENLJOWqDBR+J6i48JULKMpxYcVlfCamb2jalgcZh+h3iUrgP5ShSZxnMHFbVms3qof8INw0
 pn09wuwWEXu7dCeMbe1rYDh1Lc8+TJN/G4F93XNBsP00Vs0nyoUjZGrwZrLUhnsnycojrK/kSoV
 zTlkl/PRj/vjAs/U1FOQ2EuYGzwpd3VSKAbn3/Sv0lBfq9TgsUPev+2cjrSfTvwrdlh6hFeACGL
 nx8of9xjve6gF2yQkU/ts2xdlcBQSDteDvtc3xy2A3C+USz6k+xiaGFj2D3FQjXmOKL92CrQk+a
 9uCkTU9DHL9JiefQ6ag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260395-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[quicinc.com,oss.qualcomm.com,kernel.org,linux.dev,poorly.run,somainline.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,HansenPartnership.com,oracle.com,chromium.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C283A163C
X-Rspamd-Action: no action

On 1/28/26 12:48 PM, Ritesh Kumar wrote:
> The eDP PHY nodes on lemans were missing the reference clock voting.
> This initially went unnoticed because the clock was implicitly enabled
> by the UFS PHY driver, and the eDP PHY happened to rely on that.
> 
> After commit 77d2fa54a945 ("scsi: ufs: qcom : Refactor phy_power_on/off
> calls"), the UFS driver no longer keeps the reference clock enabled.
> As a result, the eDP PHY fails to power on.
> 
> To fix this, add eDP reference clock for eDP PHYs on lemans chipset
> ensuring reference clock is enabled.
> 
> Fixes: e1e3e5673f8d7 ("arm64: dts: qcom: sa8775p: add DisplayPort device nodes")
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

