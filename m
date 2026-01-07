Return-Path: <devicetree+bounces-252227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DB00DCFC8CA
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:16:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE61F30092BC
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138BB4C6D;
	Wed,  7 Jan 2026 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mEl/JXNF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XuiEOSGd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADCD28E571
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773722; cv=none; b=ghjFjQ9SK87m4xP2GGW1xUjpl28Epr45w/chxFBfY83DzVEoVS5f09ctyfOp2cutqHCz0ZIz1qMQaaBZ7//srwCN3InuE8S97neV7e1AGrNzegtzPk5D0H5EFktzZG1cB7GflTsxAFBAp7GULCSe7U/MzWxJcwKDRCCrsdA9SbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773722; c=relaxed/simple;
	bh=G9guphynNXUW98iSs3mT8MBJcIn3lVTmI0QZS1vaxyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZ7n3hMZ0Ywks15AETgGez+PzqDS35oYaajUs4WdFDQvOkL2UoqKCZSrVYgz02sOkbm+upUHyx8gugC5gLbYex92yksKgCetadWl/jK4jL3POO+kPDdlZhChqSiIqLJJbX15n8dBVg7D9kSftPPYs3w5nNg75VZcZxfnfhZedNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mEl/JXNF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XuiEOSGd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074C9G44091260
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7/ORuAlUmALvoZXoH/iZ/MKI
	plEqAlG1ddTTqoZoxos=; b=mEl/JXNFxLJJvE6uxbB87fe1H11fXhwYZABqNSdQ
	fQZHlZA2lFzIujLrYni+emdMKWB7lomO5QM7nTIwDePkkHx04gkh/1z74aN68BBl
	n6lSD6YQJrHHBHeSyr9N8Xq5a0TL1d3fir8O7TDoK/flHn58qy7H6rlWu9awaWUd
	e0Lyh4RxC5c/G1imEB5MRiQR8oSEmsrUGr3gQgz2GMti3g1iqcYGZedS2TSAJpLx
	0jqNDf8AQGyhAjjGmha1HGfZAvoC8Gp656ixro/deU8BzzjMCVD9lLgMrpLuGkqw
	H0LhIegKAkE1Lnn6M1ixT9ewSIJFEl4wppR39PP+LY5L1Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyunbnc8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:15:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee09211413so51546471cf.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773719; x=1768378519; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7/ORuAlUmALvoZXoH/iZ/MKIplEqAlG1ddTTqoZoxos=;
        b=XuiEOSGdfL69TM+K1UQczYp1LFWJ84CZftNWB/P+FF6154Kgb22VfERnZHlCtoBvGS
         M7pYv+6S4iC74sA7mIzs0FX8UXDemU0jTBWfDINxN/KJt1EkJbciAoazPn+Fv2YFsdBr
         K+Erowks7BPSAs1cs7RrpKHfrSK/nzH2uWJictYKcqY9klsgaXKU2rniCAgBypGZ4qL1
         uNBCRINpUerzsBcQp3Bs08JPiV6bCrfQOecKLSLSpyA2MNB9dgdJ1aTX0S5O2gr90hDN
         BsxEG7ZLNQpbZYIiOQIppi7NW7+gQY5KQ8CWRMmhWDBgdDiqXaKuvpqnh0KWkjHzbhfw
         QYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773719; x=1768378519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7/ORuAlUmALvoZXoH/iZ/MKIplEqAlG1ddTTqoZoxos=;
        b=k7ODdSi/3+iflgr/qFbf9BVBg1QaWHZdxLuM84viSzbj4Ms0VFWdOtC0dHoDyMUxY/
         o0z5iKwMFEx5HZEju7kdczC9RjFUXwIxwqoov2E8+AwfJ84C6pCOWaJ7hTJDA0I1zW2s
         jUwd6MSKF7NGrErbwakDkVXXotdZBAxGbwRzsKt+r93NyBFyY7UDdLdeoFMjgOpbx5yC
         y+P5bik+3nxVNLGaUB3YpFhF8nDzojmBaeU2cji7ychp/cjTSMDApZh/fC0/zsVQpVnl
         e0a+e/2X+2tB1YI0M4gVA5n7lZgtGY09nVDx9mFwE1Xrx1TRDKdCHYNSDaKrsNdb+jDv
         mJ1A==
X-Forwarded-Encrypted: i=1; AJvYcCXFet+2b7RJ/Oobi4PwstkcqE5VQCr2FmUl1HL/UQawD3QqoOrBlr3KjKvbIkutgwLX4jk2dJClyjZk@vger.kernel.org
X-Gm-Message-State: AOJu0YyYv2uvZI34mC7UGX22EXlUCdI/f1qJQ4zWTMtdjAJla96IyuY0
	N7/TkQVm3LnphuPZe9VDzZzx7NNIsMgVtQScyutfE5h4XQTETr6PqChGbag0q5DuS9jlSe9JGPa
	8x7traVJL6nl4mMT6NaIQgSP376RRJ8Gg63QJCWpIhEj8JyXeoG7eO8vuRSZ9XI4O
X-Gm-Gg: AY/fxX7qjg8fR6sHydGQmd+9ALBNmqzgOJXyM+z1N81HE+l0I8nEIw1rAhPKBdpBfOh
	8CMIi7PwdfYRbX4N+mJ/cdKawwFNK3QDrOLdcTrJDI+4CWsjFSR36FzCOhT/HXluo4pzcfR4GZR
	EbCp5YYYJi3E6q2aTLFxjBmaWJfy8seTqGEwpRxJKcwSZ6YWhlSiR8ZHv1XGpKEProCCrPT/LEA
	cEpHaX9d2jPX44fDGZvFHzxpclypq3S3LBm3ZVMFLMzGjdpNbYP5mTmWPtGHBjNsqKXAL7i7NtK
	9ZGGYtNBWYdMahIrtjzSEfGsjmjYaB6JLt8pM8HOixGmaKL3eB/4Ekk/uZPUFadJNhLDmLdEO9k
	gSg1UFsVuds8I6oftdffVnIL0GgmhxqeoluXvaXv/S6Z/fUVRMydaLz+KBqpEbzsL4HBRroVvmo
	136IC/fQYGXIOtTQ8aFAFeLvM=
X-Received: by 2002:a05:622a:4a18:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4ffb499ba21mr20710571cf.41.1767773719513;
        Wed, 07 Jan 2026 00:15:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELXjesdvAHb2vIW4ryLhR0dlhPdZd4yFCCjpn7vN81UbkGeRCeU9w+cIz6186R1d9MNEBuTw==
X-Received: by 2002:a05:622a:4a18:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4ffb499ba21mr20710341cf.41.1767773719150;
        Wed, 07 Jan 2026 00:15:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d699d2sm1125644e87.87.2026.01.07.00.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:15:18 -0800 (PST)
Date: Wed, 7 Jan 2026 10:15:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
Message-ID: <aubnydfer7ffn4wfezrbdsw3jov4rimswwtxkwqb2ojdkvpvub@yxxqxcg4tlsc>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NSBTYWx0ZWRfX9SiUrCc0pJVW
 Q538aaKWh1eAJD148llNTUFRxeC7WI/4GuCRck/F/66tJrLIZsXs490DJ8AxbHju5l0nHMJaFhl
 nP0s6kuH6C7C7XWnskPzNd1Y65Rjg+LDD+QBSg679cmisVZJcnCQ6ieczKvmkqXQClUxKokXVov
 E+2ZBBEXljyDC/8uKwPs/lmvXLxUZRRIGtr/D2yjnaXOTuF1IHVI589PJ71IgutO/5Jf/4UPk5d
 0cYS/OBle+HO3UaU2GRylAlLr+t0tf55Z6Q27dkGgz15NohJwB/+TN9BTJu1lcjaULOgYE2lyBX
 UUDZNHZTAjVRW0CS3OkaDvh1s1cBfUn0KC6TfyMpi8MS8YRshyMvEP/9dhZYA12HOzmsRh78nAl
 fPVUjnvOU811WWgO4TV4iiJ+giR8bGqUsgpKzrdRehvV5smbOg151wYn/2d6DBjWmN3IAeeOPz5
 oOvE2zN7y7WsVwQqUHQ==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695e1618 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=wMCEmTFnA80afR0hZ2sA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: QKpCm5EkSF4BxPTohGazkmfpQAhkux-Z
X-Proofpoint-ORIG-GUID: QKpCm5EkSF4BxPTohGazkmfpQAhkux-Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070065

On Wed, Jan 07, 2026 at 09:05:54AM +0100, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

