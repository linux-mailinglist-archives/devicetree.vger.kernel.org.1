Return-Path: <devicetree+bounces-262794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMR+ASahg2kLqQMAu9opvQ
	(envelope-from <devicetree+bounces-262794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 20:42:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C68EC283
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 20:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E393B3015D0E
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 19:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3839142882B;
	Wed,  4 Feb 2026 19:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KD8YXFUB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L7K1I/HI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53DE34FF41
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 19:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770234134; cv=none; b=sWUhXS+E7Int47+l+aV7Rlr3BGQ7BBHoT9orkIsd3Iqhl9448H/B/moAvpUW9ZCExHIpaAA8E30Ty+u/kx4jH8rnRiEyM7L09kDeVquky3YfOsuVwdFc7/nOADHF5S/0RBzvddLjLl1FwwlVWYnY+mmbYZkVuSNOEXdbW55g8tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770234134; c=relaxed/simple;
	bh=K2uFDuUKGmXVbCeC1snrDX1rYEsvUw88AUuCxGr5Fpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SRm+EGDK970Wz4cmJe210GP+KVgzCMvocNHqw8NqgblBBzdgEzr7g/GuTRtXiiGNq96V/6Ja7ANp4lv7+sFO37WYCbZSA9gsHLURFqHDqfW6HQFLOjiew52sVcdjwP3J+MaGx6WbNnPVgXWzUqgzF218OffhZD3TQZT/sK/5K88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KD8YXFUB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L7K1I/HI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CITF3111325
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 19:42:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lZnMLbOsj1Lb1eWQdiDib+VK
	dN9JrzI2okmR+GB2mLk=; b=KD8YXFUBvN0+PZS8yQtK+E4YWA7409mSs6x45HXw
	9aHws4otwUC1+1X4nVJJKacVkD0lCvYRLZ3Z5AQjZyWj/KWCEdtitTLxfltZ3F3F
	s1V3GKaQ+UkTzVgsGsCaSmVZ8E39DqTqfSioFvn4ZzB8JMdrgjnKcGhPQ9Sy6CBM
	sDgiWdDcDaPD1xZaFfbbdzSkneB2OSh6QZyejuUJUToCQ02C3hBYUIz/YJk9RP63
	Vr6rzH0XeH9S6MNMFR0rRSblHTobFipNbAbw0CbJDXsZBZv9Yutjm9NkBR1UXV41
	Q99WYU3Ktoxv2sc3gYAjCnXqd/8SHy2Co8N1l8IKkoK7yw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c44xjhny5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 19:42:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8905883e793so2163296d6.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 11:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770234132; x=1770838932; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lZnMLbOsj1Lb1eWQdiDib+VKdN9JrzI2okmR+GB2mLk=;
        b=L7K1I/HI4qPJSIHVBVxRaqBSF/rX4d+iFfIR86GniDLoWR0od4fCGy4sZEzIVXHGYk
         FtT6fO+asNDoN2QCRZzBon5Ig2LluTCap0RcQBJSx6tzAP23i/Fgd8ZcwiB7sjx2XCjE
         zadCND7WCtdHk7HT7L02WREYN0XzwM/3sfqe9ywbCAJmX8mRSf6pPgaTeydx66Kmkbvf
         pLhp0y6eq2hiq3lzClMArWWeEFkyG4+XqzmI9aQLwGWYOCksbA2aTOxL9ufqYnpV9j2A
         ZOTTJz/MVPpR/OjYWoY9EMF/2DpVaELVwLI1wv517xgxJUCliN3cAfInkDK9tZbmDAuU
         uTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770234132; x=1770838932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lZnMLbOsj1Lb1eWQdiDib+VKdN9JrzI2okmR+GB2mLk=;
        b=LTqYf2enAyDAWI/Sx1+AKaRd3hfKFf1O4Za3WOFuQ+/nPCqDZHhnDt6FSnHj4QGYGL
         m+UJEQU/nUXKxQZL4m9AzNHq0UnAwA5T1lnKGHedQe7JwQI/V5hx9WMjAhojFyf8oHir
         PyQRzoNMDxx63IvDE3kPI1SLL9UfkovRyQ/vpkQdIbWNJQdoKMd+FlrAC/5HWlLulaRv
         lrBGh6/PxQjPIcwVY9T1oaAuLDB/64aSCwFdJC4ies2gEg3taPrOWx6hpkVfVAicg464
         5utJXtj3UfJpkryhQYoXoOD4QKhFiDYtyUU76TOVtF1Ouyge63QaqSob/xlmlqpmW9mz
         rDjg==
X-Forwarded-Encrypted: i=1; AJvYcCWYjt0wdJ0txeYqX/co1C5sig+u+Ijy9wzQWaNuyw7dRFNu5XCcc6kZ0IvCtB0Metpg9b0FAmLPlcbQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8ZfAPrYE1FCYfYZjYdg/fqotz64wKkqTI/2Q+zAAnt1bhBoU1
	sXLWCqMCEi505OzsQmscLwf0+oJ3o6Qih0AlVYgpHHUQ6oB7W8qG7m9vSfRyFxrj+XMDdWnfB8p
	ZJidOtwdXjVYIt0NJXfMQrDlT1Co2+E5NamUjrnncArLFLfh3Wxu8CgP7UGGodk0C
X-Gm-Gg: AZuq6aLInLfrYyp4h1HMvLP0GJhknqvX3C2jH0mhw8TOLoJKpQoqY4SOH3l7u9XxX+r
	5I5w1iql66FiW1bQEqR9GnD9rwqi47CHCtHkHGaGlfrCw1J91RBv7fCtJEsuiHg4fuy8D1Wdezp
	BN8dGFSqznkK4Cg1g1EM/7VcYu1QX+0/U/GTOsW4LrKCu+2R2AQ9xsaM86me6n1huulk2XtlKfK
	XBD9i0vymtFNsZy8oeHyMZAsBQfMnBMxC54GBAfMF9xcGOH69swnHJtjL06zMiyok8/OcY5bobV
	Un7BmqnayevFXhwvvk0qhCTfq9FOyITg2X8kJOzR8sNX4dE5PfO9sd1SE74994i4kdxByQd8Dq6
	MGr2wvDjIrO70WsWU+QQcnOOoy5UgpPXrufqUKF7foLFnOL6R5s4oVCTfpC66kiTLwAcWby/xc/
	QPOcFrR8dtB+B2rjv+77pG2Ow=
X-Received: by 2002:a05:620a:4804:b0:8b2:f371:5601 with SMTP id af79cd13be357-8ca2f9c4d68mr522969585a.50.1770234132280;
        Wed, 04 Feb 2026 11:42:12 -0800 (PST)
X-Received: by 2002:a05:620a:4804:b0:8b2:f371:5601 with SMTP id af79cd13be357-8ca2f9c4d68mr522966485a.50.1770234131815;
        Wed, 04 Feb 2026 11:42:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e387f887csm866861e87.33.2026.02.04.11.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 11:42:09 -0800 (PST)
Date: Wed, 4 Feb 2026 21:42:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/8] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
Message-ID: <vdx2ha3q4mkfhdfszgnqwa6rfkendlwgjlyn3te2h4l6jfkgmy@km7pq7faulub>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
 <aki2cw65fdl2toctcquprkzpltz4tejsyf2sudlfqy5hsluvx3@ayi7wqaa2csq>
 <97535aa1-6eb2-44b2-b04b-e7608d630fcc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97535aa1-6eb2-44b2-b04b-e7608d630fcc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=DtpbOW/+ c=1 sm=1 tr=0 ts=6983a114 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=wRy90H0ZoyRQatx6-qsA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: Os6rRoz8y93Ww0LRqkhgOJVrokQqevDi
X-Proofpoint-ORIG-GUID: Os6rRoz8y93Ww0LRqkhgOJVrokQqevDi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDE1MCBTYWx0ZWRfX13EPFW9KUSvW
 t4wDvJqhk9b1n0mL3Wn3Qfr5fjGFHz6dPDdDuV2xMlTmNKcmNQHyEcmVkn9b621M9dXCJ8JU9nq
 iLC2Qt6jYuLAOCjJF8GqQHuYw2P5zraq7Aswf5+IMCdB8EFAfa7HbI+kYOKWN6VIuSDY5D3gZrW
 zaVhOFwQ7t/kzh/2h7VCMjgLkvjqrhyuM/tq3211xe7oZX4bZpxf7c/Vw25Zn/lPK5Jy8SZVG/J
 cT2OXDflCqzsegrQ51nutPxuOuAxoy4fjMWawV57TpBIOiuK3EjaBV3ngyfkh3IwW+UVnmVZP2I
 h3R12eSoox3YnV9MKO9BMCzhfUsIKFAqezRZNJnt3l7g+gTfJHAjiq+HG+a2pBFk6dBcJYC3XhZ
 4AuVt/zIPcXz2oo7Z8Kvwa9HqV0FaS3pmznUjjz/JivfNeBg26Z8kZE23xn3AFKpNBmcLEAe5J5
 Gq51it3szh775x/yuGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040150
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
	TAGGED_FROM(0.00)[bounces-262794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B4C68EC283
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 11:16:34PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 1/29/2026 6:07 AM, Dmitry Baryshkov wrote:
> > On Wed, Jan 28, 2026 at 12:56:34AM +0530, Jagadeesh Kona wrote:
> >> Add support for the video clock controller for video clients to be
> >> able to request for videocc clocks on X1P42100 platform.
> >>
> >> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> >> ---
> >>  drivers/clk/qcom/Kconfig            |  10 +
> >>  drivers/clk/qcom/Makefile           |   1 +
> >>  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 596 insertions(+)
> > 
> > The videocc driver looks almost like videocc-sm8550.c. Would it be
> > easier to merge them into a single file?
> > 
> 
> There is significant delta, the BSE clocks are newly added and few cdiv clocks
> are removed. Along with that the frequency tables of most RCG's are also changed,
> accordingly initial PLL configurations also need to be updated, hence added this
> as a separate driver.

Please mention it in the commit message.

-- 
With best wishes
Dmitry

