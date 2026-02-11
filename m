Return-Path: <devicetree+bounces-264576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEZVMFXji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:03:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A344120A0D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:03:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CE9C3050EE7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092AB2D63FC;
	Wed, 11 Feb 2026 02:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fTNREKyY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d0BBGcj3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83D52DC32E
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775378; cv=none; b=mPDqpisCLkNe7zJjS/En+3TXWqNNyKwZ6Y9J2Lrk6l8Bsh6U+uPYX4luqM4SKhIG/32LB/nQxntNbJg+S1Yp/2Un7gFOE+8BGpXSjw+whcbYsB0WoJBhmsMhwWZrMAkvJ1rdYKOCG4hByaGUylJ8I1QGPHAecXx1Mbz8pSUn46s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775378; c=relaxed/simple;
	bh=T6G7YVQsFYhOGkDDT7cYoKPEjTDPSh7GQScV8zs8qrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSZ52YTqGzcQufhZ4nChHQZpvuShabDOTN6DDDVbm4ONLNu59qlvlird67nry9BKGIqhmu59fLoLtId+9q6c5q2dZVM+3HgIHGAhRxu1Z/xfHwG6txKuEUWtBZoxhhskXsdjU25zCTSK+LGRdV19h7y2WngeAhv8nUotTQW1RzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fTNREKyY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d0BBGcj3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B0ZVBA4006716
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qprscrmdO2gzrzAh/SmswRXv
	Dk3TafDLjIo+l67tJlM=; b=fTNREKyYMoiapSvQPxHR94v4I4GKb1rQaC0cTCHK
	+0ckW2uNmLpZmpPn8OfvuASCd6yUhQquZTIY4cGWhTU68GEykzEuSd+mWU6oVaxv
	5WjPp1w/qb+sgf2cGutzYtXh1CFsSsEzmAjtlFWsEc0Z35EyZARemvISLu04onCN
	cxmRDCfTnwoETkQk6UXCoXsJOAFsZe2wKF7gjKU78iGKb1tM91YpXQ73yuEL4dt7
	d7BOaPVfXbbkaAOjgL/6rsEbMMjk43NjmS390QjZPJhEb2RDRnL4j1cuvi7jKXg1
	1K8GvrXraG97maFRY7d6MMNNb2Vp0bMzq16zzf/8Ed75gQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8fbwr65y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6b4058909so1667564585a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770775376; x=1771380176; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qprscrmdO2gzrzAh/SmswRXvDk3TafDLjIo+l67tJlM=;
        b=d0BBGcj3CH1E38MNuS+xi/ZkUnWbsWfZsWUWAhG548CrzFRUcRu80y0HZqX+LzP8ic
         Wq6V5rSl/0feLiuO7IlI6rmuASMAWgLoLaCJs5AtZs6qKQRLmaUm/enMNO+DDTKC3nnD
         E0uykrSsYRLeH3Njp+7H7m/lpt8nKBhHB2PTbX9e9T+R15eS5VbdV82NbiQPZccwyLF7
         4/MlsNNdunTgZLJXUZXmKWogkTyhkoHuiY1ale439qL8y/Sh9cnkqYdmvbfDmfGGL1g/
         xJV3wN0ydIYROlMEZLE52/twmsS+lgmtnalW2tY1tTK8MVOW+IM2mw4LsgjAzYAuHU69
         2uNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775376; x=1771380176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qprscrmdO2gzrzAh/SmswRXvDk3TafDLjIo+l67tJlM=;
        b=rzaXJl92QksuaMJ9vbgUqjo2xgCTY1A0JILS+T/cJvCDCfD0hNyR8sn7YlRm2O9ys/
         ktaoMwvUqjBppNHRO2O9MuxaK5cGP5OSiwemJ6CbfNs9s350l4y2rSYjNL+lh+3jQptT
         XJpB+5btaEfswb2rlUv0TzfLFSvsyaxaYlUDKQBqsWtnJFenDAvIk05Fph2FIfIr2J+q
         psCTmhc3TxSdI4lYqXMSQZh4HKxI4j2oHQ8yFv2hJQXVMdDnVwN5pZ9Nd2U/h7yen7be
         tG77FYF1agLwuMNi8cYOe8yq6ERLgYsQqhktrLFBPd9r24SA7UKenooTps1uTcQ3ivc0
         GWbA==
X-Forwarded-Encrypted: i=1; AJvYcCUngUfy6pmShwi0Dl5GSKfDdBY4Dr11v1WAXwDbWvEmBK7EEMHw78lasr9ZnOcuw6UPY4m/Cl8vE4bO@vger.kernel.org
X-Gm-Message-State: AOJu0YwRp+t5phiPuv3M7KiWAW5p1WT/Smxrrq9CKZ6A4H0+r5jWMQjs
	fJM2RzZrklxpTh5omu4Q2ySTIOHcJvd+76PTmxe+jW64Jld7jEkwhbYR9QErqnvmgFetvkKnC79
	viLa7cw2fCC3EXuSxPwnmQN9gmkiy8M2OztENd5LGPUfAAO5egBueVDDj9MacE5+k
X-Gm-Gg: AZuq6aIaooJuk/CrSsf1fKS87Qdv6Vf6nv/pJFLCpcfB+VUDV+fv+VMO6X6iRqTzIQ4
	V7DYLCIzNHKt37PH9Kqh57Or/pXdJFVMo21N6SsoRp2jTg1FmIOjUuuOdannIjB2SywS4iss5A4
	9/DRFuvbM0/y7zZCd7w6IL5RP2cJP0ZYFPIiSKogQOtUjOjSPOvQvyU3iSM3F5os/aYYxiZELjJ
	y77n7Tz27iB88z2J55d9EHPgaWVoRrZXZAFU4MgDnXoLLvMruEbBrPxj8gJlftlSfhPV7oceXhO
	4CpVIjCSdMFSg5hv3B/3UqNAu45mhp3y120ley7llPwhFpeMHSrtUeBfV77UH3Caa7/v7JTzAT/
	LB+/F6wzev5D3kq+4siAqlkVRePovlXjjwNx2Hr3aSkxPKk1g3TUXLHZmNPRiLIaSkuEbtHU4HI
	McjPceEwUtarqE9Fxo+HYRhGYa4ck7049FS7Q=
X-Received: by 2002:a05:620a:4447:b0:8c9:f996:81f9 with SMTP id af79cd13be357-8cb2ad3902cmr29858785a.82.1770775376197;
        Tue, 10 Feb 2026 18:02:56 -0800 (PST)
X-Received: by 2002:a05:620a:4447:b0:8c9:f996:81f9 with SMTP id af79cd13be357-8cb2ad3902cmr29856185a.82.1770775375801;
        Tue, 10 Feb 2026 18:02:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f568696sm24089e87.22.2026.02.10.18.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:02:54 -0800 (PST)
Date: Wed, 11 Feb 2026 04:02:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO
 expander interrupt for Lemans EVK
Message-ID: <sx6kamyoenkemc64n5uthulkcawzkdpbwx46nzvh72ccxdwxto@ys562sqphmyd>
References: <20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com>
 <20260210125348.2800846-2-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210125348.2800846-2-swati.agarwal@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GM4F0+NK c=1 sm=1 tr=0 ts=698be350 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=0oXT2CdUHsumAo5zBxsA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: btCTPqRKefzA2xEhQLdP9O_2LVzptBF-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNSBTYWx0ZWRfX+77UPYmUCoKD
 BDvAOik1chXBlFyvw+orXXxlxtyJbs9R2zfIyfSTYH1XIeE74jDVrlOoYYiMck5c0tWEssaU6js
 37bmUuQFZHwPD93lnSh/F3PpPwP+FhnJklCXa9kILBzT6IDme7R5PsekCh7dmN6+xjcg3bSPqtB
 G93ObKlF3M4Etgqec9n7ZGP+NthR9B80q8itLfyYJ1hUnvR13WBTQ4HkAhy+/VffTt4bgKIVyba
 G5HNAjnWuXzOVO0jRJWs95PVxN1G0JY/ul7HlsiKanCKeHmCCYPpwJemDsv8riB+xXrNUyD+1ZV
 u08w5D39fqiwIg8ZlwJlrs+Tpk1MDroFkITjMkOiUuRibap8CKRtDllCBM3qeympJts1Vw7PcFZ
 b8GvinV3TcMuWRZf+HKswwKUTsEH0k8hmebwfdyJ1jZNxcalxMWbnCtpV4z269NXfCLSBq9pFzs
 ItQk02Aw8lSU2/acGcQ==
X-Proofpoint-ORIG-GUID: btCTPqRKefzA2xEhQLdP9O_2LVzptBF-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264576-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A344120A0D
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 06:23:47PM +0530, Swati Agarwal wrote:
> Enable PCA9538 expander as interrupt controller on Lemans EVK and configure
> the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
> internal pull-ups.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 44 +++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

