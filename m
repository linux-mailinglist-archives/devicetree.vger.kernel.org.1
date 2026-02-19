Return-Path: <devicetree+bounces-266575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMb1JWW0lmkxkQIAu9opvQ
	(envelope-from <devicetree+bounces-266575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E3415C8B5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80230300C021
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFB0932694E;
	Thu, 19 Feb 2026 06:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cw+iMBp7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e3wDHh+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2741325728
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771484255; cv=none; b=eCoe2ct8ZrxQn9a7teVBia94Xy8R90ceYIPYgHml0NPpJpcTbw2vS7U/DIArqFYuolV6QsNtKJ+UIC2SnI+1yuM24J8CB2+swrg0F59zQMEh3+0INEbKmFXVAk08/EMhP/Mn8mWnNzEfxCyy1jLz9iwuhFW7RshrsR2CbrPYQnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771484255; c=relaxed/simple;
	bh=Jnv+qhVIrPxgKznxHN6mnLAbbjdSJ6MHkU036c9TN3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YXxEy5IrzaWHBamUNkjJgaoPr4hMOoRUn8WcqzgOHLpw6Ygb2s3KDzcIZ1cA43+loYeSYkP5sRj3sP/iDi0p+oQ53lgVBVI82XwFZGs3uBQVg7lq5uLkl/EH8/4dbL6pvIh7dvM+Ua8JY/XlV4ytJyjlAYpPLObZsX8xnXngjOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cw+iMBp7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e3wDHh+h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61INZJ0k2105068
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CWwYhGQjrLY53wY8CjCcjYMR
	u9scIOxaQdYVTUIyAz4=; b=Cw+iMBp7W8oUqUyfNR5x1M3dV2KRSUZ83nM2mWd3
	e6bD4dMpVc5bVBdWo7wO8fIt8gVRPmv7fOqZwPmV3fqPztxRGgvECPEvq9Fm3Rzz
	WgdtC65a+OXk7zwbk9zDQw7CuI1qZAzUZ3BTlQ+TnW2RfEE1VYXOqe3uJtT08tqZ
	3zHUnvVVdR907HGBctBgEC/65JKUK16ZBDKrEnaLyMwZNkuhF9yhaTKDXpILuz5a
	z053rb1xdLV4CvvZS+hPeko7dd8qXu1xHFnUzFaiHOl9ecx0TjD93BNHsnsbRNwf
	fehKuljA8eDBmDP6oztZQXYzHChqgoP40CJVqo2qgEXfJw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd78c3k5q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:57:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso601405185a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771484252; x=1772089052; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CWwYhGQjrLY53wY8CjCcjYMRu9scIOxaQdYVTUIyAz4=;
        b=e3wDHh+hdxpoc6CkRGjDSzK3OU6mXsBXJewbZVuixb80IV17VlDac9854WhnVy74ce
         DsTrrC6OxPxxaC4cmsYxxqmvfYDSe1pssbLomDgcXRlVqqyB//OZG1fnWBm1L3BUajZL
         kuSI7BJiQfNgKO6bort4FU1Yen4IDGv8fll6OXgc/EY63R0HtDqm7m4MFJcfewvxTM1Y
         kw7c9Y6S+FQLZiK5HBuFFs68ivXqQLTiwuzgQhdzhvB8NS1U8tFjdPDYphzWrD5xeJyo
         Cbbfaf3hN5PnQhRG26VFCk2fsWSV5i83eVGCjC6TWSNMY2xkBt1YjrZ5fFmodrkjopkC
         BIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771484252; x=1772089052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWwYhGQjrLY53wY8CjCcjYMRu9scIOxaQdYVTUIyAz4=;
        b=h+BugImrSldy2bxHmsJUD5/NLEA5dq6OJ2BxU2IyiZNwktw6kfu4eNgOy471S2OSUN
         ACkdEhV9lsmzhgBMFnwrmhHeDjOssnZjN2q7jwHxCkOTbmRXY8PUHe8Gb2bTNv162vAi
         kq9GJicg37OtrilDxQBQO6KbbD7ZTx+aEsLspCEFIXsJSIC8ubvK+5eiX+eK16BaFtgg
         tpfaOoyCAzhPhuPXCPWTRkO7HjTAqMBxiIXt9HDdb/Ng+Y05RFbDM27hNyOna0r0YH/F
         lOa49R8eMTbttTdRpq2zgatexbVfFw4wDyvJ/VOvjaK+B/U/kS/PwnijLCC8zvt8g1mG
         RcVA==
X-Forwarded-Encrypted: i=1; AJvYcCU+0E25She9kIHqHu3ge28tJa3W+qIkt9ayJ6pAKEsruFpswhGjQO80v7dsG+KeKPryliLxeGbALbSy@vger.kernel.org
X-Gm-Message-State: AOJu0YyFjhMafSlbGTN5XjkVN7OYAq0/84x4vAH1W/mlInQXvds59DZ3
	LDfx7eQ9iZGFqB/6N25zHAHgUAOh5oG1ComOB0XX+knXylkKtCu3CLJF0d1qY56G4CBtjeRdY48
	7QMJqVtTb5dc85nXflhjkUd7bwZJLWi1IZsIFGJmep3HRIJQJS0XMo8ivkCM9aBbT
X-Gm-Gg: AZuq6aIchOxD58+F62DI5PAt8pSaIWuFwE6tm14vzYNj3xCFSK26NpzJxGvIGAGX009
	SZ+xJ+jQCLJSmhJQUGy3i2J0HWivJFj5YqqChK7aPczAgGxE2Wg9a/hZWcrpksAg/mYNdn5xluB
	W4FS0F+YZxA5qb+CEyFGgErW4CbVOyis7XBW8Cw0M7jOnyfOPXpa2J5D4YofeGU8F2WoFcvpxAs
	07lu24sEcJo+wrSyXNqbkU2c4eblbH45BTcIQnqBFQhQBsY/+myDUTPwaHyiQULlagbvqXRRPwj
	N21V0I+KxtFBGgqOtkBeNMm/2v6pHIiC/RwtrEZ2hI+daRMgv30s94b2Kw5T6q51rhcu5mfUz6D
	LtfJfzsiwO4Tpc2bNDY3W2U7Evq1s668t8lltwPMwy998qyZlJ6YzkCO5kVmXmJyA7qIqqX6LGc
	U+CnIgyksuEXFu14yyIZSqddd1fE1HFivDT48=
X-Received: by 2002:a05:620a:a31a:b0:8ca:3175:cc9f with SMTP id af79cd13be357-8cb4225fbd4mr2064920785a.7.1771484251950;
        Wed, 18 Feb 2026 22:57:31 -0800 (PST)
X-Received: by 2002:a05:620a:a31a:b0:8ca:3175:cc9f with SMTP id af79cd13be357-8cb4225fbd4mr2064919585a.7.1771484251510;
        Wed, 18 Feb 2026 22:57:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a50f1sm5268200e87.42.2026.02.18.22.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:57:30 -0800 (PST)
Date: Thu, 19 Feb 2026 08:57:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8550: Drop redundant VSYNC pin
 state
Message-ID: <nk26ukkcpjdklfox7faiwk3o3qbvym5ptimhiuaoe5dn5qzbv4@po2c2isxmjh4>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-4-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-4-2799b8a4184e@oss.qualcomm.com>
X-Proofpoint-GUID: 8vxk26TSQjzHOs524AMDM5l-HQPzLP6E
X-Proofpoint-ORIG-GUID: 8vxk26TSQjzHOs524AMDM5l-HQPzLP6E
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6996b45c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=NMe5sQuIffPLTvoV0ecA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA2MiBTYWx0ZWRfX4SDe5rzHLB+x
 8NY60ydT0DoVq19YsojZirGnJ52tIsyCrEFa7f9fbovox/lq7M7fJzv8uedsF4xNzrrvNiA1Ga7
 W4QQQ/8noDNk28fZ2adPIJs5Pb9n24PSHPRcP7XdPCtkWYoOnNZafwQO7TfHuDNwV2iZERFCpLA
 2zfN8sQN7Fsziy0H/ydvCxHfEzrYcXJIQ4tqi5WaJnd9jNxZk2uWetgXyZPj+Ubm2CFfYEmw25p
 YVATNa2fQbLjoB+8X7kIztAa9QblKc+WvgHzdaW+cnsOXQthRClE2SQmgk+te17lAaHY54XkX2S
 D84j5DYBY60cR/jk34MOS21V3JuEN5h77FQXxQHuUXNp7xa7s+6S3pt6jtgK/qe9JGdsbySDldf
 8A4h/8+ldPUn51o5D55FWzjoPZUuFPNts/m4AajPTYn43oSPAFJD4b+y1qzPP0ZlU+9i8LQ4eJW
 AbrOxXKjkmRJ6uBlngg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266575-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 57E3415C8B5
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:24:26PM +0100, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 13 +++----------
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 13 +++----------
>  2 files changed, 6 insertions(+), 20 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

