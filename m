Return-Path: <devicetree+bounces-264309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELI+GBgBi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:57:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B799119419
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 023EC30836A5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B8234251E;
	Tue, 10 Feb 2026 09:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G6gZkou8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KtLEXdpU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2528E33C53D
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717225; cv=none; b=rKqeA8dOv6fVtlczudSXe0b99+FG/+V49f182Mq/ael0mAQxF3gY/j17Sqadt3AokTeG1BVlsPTsCd8OX1gJ4d2s9RuluoUY2CxpC0hnEVG0rIlTycXhw5mzS9BhjrO1wZGd4zBD1kwgg2oHtilfjVqPbdvB/X9WH6TGh9KGApw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717225; c=relaxed/simple;
	bh=KumJxGa6qTFlTl9rpdtKJde+I9qSpWW/+hpWP6CkDwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T9olnI1IgCQLQn1S+bD0WUVfBVxMSnZ9JK9cwBzvqf4TUn/C7yPXBSJuZJoyiCBm4emnQ8mkP+r3fiPNb5ZlxZOzdY4QY473T6f/G/UaGkct+4le+78SX7jsVC2Zd9iOe7KLvijysUMJedCRXpUujQUJShAGjl1OyMQ10TkEs2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G6gZkou8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KtLEXdpU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A3iEWn1940244
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:53:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fE0JtBuPqrjoJF+XmMNOZcHSaCL54PVRJabZmp1KT7s=; b=G6gZkou8a4h7/6k4
	8R9EOb2vaLQFYJvx3gsL9/VCXIkd34KDnMvzgosXo/sQhvk+9UBG7fKNSvbPQqh4
	SpVNHYSLu935IrrzRIGthStwPWS8bSDkDXw4DbYNYdsKlZe+xNwrfT1ggCVrGaMn
	gM1KJGWRXr/myLyBKmYZwArbjhxtW29EhPoauX+9ZomQeJJcJcGuhaEH+3z+JpKH
	RKuiCsYFZwneRXox81X9i8Ceg2UomLDTgk2jUCQELeXNRRrq2VRAV9JySUBOIMMx
	1b3pQY7jC7t3dLhZaKNrp42j4hCkCz+mT18F/pg4qA8BtuOrrAUD1T0oRGYkyKCK
	oTTaug==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7w1js3gn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:53:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8960257db65so10007306d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770717222; x=1771322022; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fE0JtBuPqrjoJF+XmMNOZcHSaCL54PVRJabZmp1KT7s=;
        b=KtLEXdpU8ZJF9lbY6wJKDyPkVMvKqaawhLWLiyQ9QUi0IhFKUOBKBAfLsfh/wMujkR
         e7jVaynRcBcdHE5QQDhJnShQF6nFCYPO7zX0JwJ5L1ClRfGk1canPov6a0n0npg8mLmr
         596wNoSpqzCj8QAbv+HwXvH65qvkj38vmPTFPs0NeUDDo3z2+2uGNoS3hcS1G4QDo6q0
         aZ7tT4vxTjEKtJMQ2zz1QtLuDj5GcHQrxFS9h8s8ENt6Abu4yyALcKYnLsYc7kjrGGmd
         dm/DQ5+23VqRPQvcUGS2ZWOYWM/JB4t5QtxXm3gWw/L0b8WXlYPs12PYlbs0faJPkMpt
         xroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717222; x=1771322022;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fE0JtBuPqrjoJF+XmMNOZcHSaCL54PVRJabZmp1KT7s=;
        b=vC6P9FAhrxtc41TehJcBKMxEL2adbUIvl1WLznjr0K7jXcCABdPGJhY+z8WwY/fjRF
         /YpLgC7GB1EZ8B655fszIRvKjZ1CLN0N6jAWe+O+FMMwVDv3lcXVGk90WPgveGfjdOU7
         2kksFEVYzkZQtKaJWGX3EULrsA7o/CweN9osJBsVsaSA1Jb3U+hMP3pdVANClYiEiMqE
         GcSBStBIcCc75J5r1EYsBmoxhu2NE4jSPMSPyWCbWjSf5twr67PvuU8VpFw1vGTchN8+
         Y2BYFZKeKHjHhPpS/+JmJD5sBa7yM1zUz29cHdosErQsclSjvsgaYIfIHCDf4IWEETxF
         ZNWA==
X-Forwarded-Encrypted: i=1; AJvYcCWkCEPdzPoD/1BV3m9RnEnC3LOvPbGN6Hk7i5tNHfXv7IiVZ2/rz8ajcMS88q3o3TT9LXtb083Mr8av@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq9Xh/pHa8xNX6CmrxU66i8hx6Ah93bDi7dRJ9LotYGrEbSjHl
	IPHLshluexIgbWrPC1oukIaN19o30Y9zGPK1DzO+pvKW/mcMJQT0wZHtBFCXYvofB4H2GbKTdCg
	hed49eUac5GpnAsR6vUr0NZr9/JNhLNUFFYYoNj5CrAhUydore/B4JXQOkIPiXo0c
X-Gm-Gg: AZuq6aLRLvLJjj89Dt1x9aiWAdI0wQ0KPGAG2R4rqn0GomF3SL2/VlQzgJtnh8Ez32+
	Tac9isIbFwut26SdQI0/BscdQ+Kuo4waq+5SwkmNb/4CyqEPnirX/6nG1U9A1sVMWXFSdmrGn5t
	iRl2I0ETOWAW1J9pbCBwbzvU8lwdkRYLiOPj94gWnLGD2KH7Y5Q1u2iYapIGfALQRYFjIototak
	877Oc8Y/iykPJacxhGah3o5YR24EdJScIGq72x+kKD9LvqUaY0g2zuusfKktFm+Mbwk8VRvL5Mp
	y7I95jvEw7cTWXi1U1T4jRALINO45IPB4Go9rlwUVHISLBNlPzzXeJvxMSPCV6eF3/ogGET8Ahb
	/dP1Vk/ZHhuUTV7UWY3tdJM49TYQ1WrDvpd8w78ARmCkq/h5GxjbOuvBWmTVOnkeNpcfWCLO2op
	QRYTI=
X-Received: by 2002:a0c:e011:0:b0:894:9309:a2b with SMTP id 6a1803df08f44-8970fce3f4amr8470436d6.1.1770717222186;
        Tue, 10 Feb 2026 01:53:42 -0800 (PST)
X-Received: by 2002:a0c:e011:0:b0:894:9309:a2b with SMTP id 6a1803df08f44-8970fce3f4amr8470236d6.1.1770717221750;
        Tue, 10 Feb 2026 01:53:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983e5f42esm3741334a12.0.2026.02.10.01.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:53:40 -0800 (PST)
Message-ID: <3127c126-5387-4436-b4e6-694c1354ce23@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:53:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] clk: qcom: Add support for GPUCC and GXCLK for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com>
 <20260127-glymur_gpucc-v1-2-547334c81ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-glymur_gpucc-v1-2-547334c81ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CRyCYkh0h2QSbwds2XT_DaYRdrgjADxx
X-Proofpoint-ORIG-GUID: CRyCYkh0h2QSbwds2XT_DaYRdrgjADxx
X-Authority-Analysis: v=2.4 cv=YrIChoYX c=1 sm=1 tr=0 ts=698b0027 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=-momvpiiut8LGs_r7JQA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MiBTYWx0ZWRfXxVmmccDqK/fJ
 IUsZC0onGGDIfmb4U+m2mbhAYtcPvvuEv1MOkhDEWqpMK4+2S5oCzB9iszwncE0O/qkm3yaySgB
 z+WhkXFe9LffU5td2SM7wu14KIpyy5hQ8YdBFXz7/gvMLE24h+oty46XJtK1ABqsQ7sfpGkRBYX
 GqHOADrV12biN4phZ4VFD3YfFWtWh+bbe/2/wZphX37Ri1gz6CEDReNdLFHxfvW/Kh+xNKYSWRg
 hCwBhP4cDuwSnL+rXBBk27DJxVz1ayd7yQcqYtuh10cMbpvjJHyqmBUkA08RcERHzUhCUfQVMZX
 PmcEXMqEWc3WVs2MMJfC0jAElBeg0NTR1Vc7kaI/ow+l84AOnKpdUc01QHGnIYBu9AoDH+rFK8W
 IcmE+YtNuZX9s34AEac4tTY76esH6/hfa6+SmvLNBhqKU2Z5tjhVRZrGvRSQw3wre0JrVblFxTN
 Xxdl4uOiITei5ZlWdcQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264309-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B799119419
X-Rspamd-Action: no action

On 1/27/26 8:15 AM, Taniya Das wrote:
> Support the graphics clock controller for Glymur for Graphics SW
> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> block dedicated to managing clocks for the GPU subsystem on GX power
> domain. The GX clock controller driver manages only the GX GDSC and the
> rest of the resources of the controller are managed by the firmware.
> 
> Update the compatible for Graphics GX Clock Controller for Glymur as the
> GX clock controller is a reuse of the Kaanapali driver.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

