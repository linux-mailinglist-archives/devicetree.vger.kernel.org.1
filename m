Return-Path: <devicetree+bounces-265436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BqcLPFZj2lxQgEAu9opvQ
	(envelope-from <devicetree+bounces-265436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:05:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5011387C1
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F062F3010524
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B759362135;
	Fri, 13 Feb 2026 17:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IPdOyG5Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N1ZqfoG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF3734FF41
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002348; cv=none; b=PuJtHnKo+Vd9eSfjXC/MA73oGTxKK9tCCZXAzVPpKKLmkZOZgihPpesY5QmbFHqRq/fNjJdO44LC3OIw/D3QoYR+WT539MNvxiN60yb97l8AkQbAZFOgGhOchsseGLGsSHsvApb0e8JFOqYVA1zRWZmysqX5VJHgAZ6sxkQSRrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002348; c=relaxed/simple;
	bh=JaMWDMUvkCuT60rYSLNvS/Yq8InoIXkHAd/me+4HYd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qzAo5JpvnuKeVhrRgjdFq+39Z5DtruTCzBiDiLzauTiaP0wXhh8WWZKOmfKEqy6lks4ntAls6GbJ+eCkLdB1T9X6CaSxlc16IekvcCl5TPdJ0hD1CnSSQZR5NHM/W2NeLmRJrDrq5wa3D0QckCbQLcvcYhqp8oAKAbzcC7X3pJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IPdOyG5Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N1ZqfoG8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DEfcDN2627965
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XDtKK3ZwskAwrdTOOOeTaSJY
	E3ZqWCXaeiQv9bcxDI8=; b=IPdOyG5ZigUn+0A7Ttv/Af5/aKi/xn0o1+TqJ8LG
	M7i/meBXdF5V2SJg2I5hDjiiQtLo7ilaIV2Zu7qCtPhe5AczdwUXfh2/SoVtmRl4
	hu8I3uGESesoVJXocJvnoQB6+bHoLrPvjO63t219MqasFv7IueUlByH5GvbQjNSK
	WhEJFEqA9g27qitJf8ZEdJQXs1zWTmuxLnTGUWSB3pZx8GubZepBXVfyyK8voz18
	EyVU6stauuWkpG+iMGBqxT4AKoJruFpyI8EiutJPP7zTizPxOREINNtKIxkO1kpC
	IZNfguVSX34mTyriEZW2CpToyUP68ELp3BHDiiHIyyqwOw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ygut3s6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:05:46 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56637f625f2so1356805e0c.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771002345; x=1771607145; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XDtKK3ZwskAwrdTOOOeTaSJYE3ZqWCXaeiQv9bcxDI8=;
        b=N1ZqfoG8B8flsxVyOuxzeQBWWhbIEO6h8rw2/ihc7W/uibrjSoY33hBw34k9cP9LSt
         t4L6nde9R7Gxf4rS1i+QoYoBImTZJxQoAdOAuqg1jtsHm2+fdu1yotYd1IAUw9tfCm/h
         GlNddZTzfUaVIXrvqf/BY972D5P7Ua5OQjgdKLsU4tYDgLY2G9nSTdnmBClg6PULeaf/
         UXJc+OD07PPAUWMr0nBHcG7XvrdFnVuUsMtOb8PmBfZpbKcnuXR39ILXioEWiE2Ephhm
         57HQvz1EMWZAT6Jb4tJF6S/4KjjBmp4gaZHP9EnJYEP0Th51PJ40VFMpHa+pLHUX/Dqi
         FtfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771002345; x=1771607145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XDtKK3ZwskAwrdTOOOeTaSJYE3ZqWCXaeiQv9bcxDI8=;
        b=GlxCHtOo2cDkqUVzw1ePAQDJbClwx3AJ7hSFDJosv9PrVDKi8DDHAEpBGjfsO1z5YE
         g+30VjeuSUxyMZOqsaHA3Rl6SCbNMyrBsJs/TIUg8wjdV3CWDRZc0vHi+708FJCV27OF
         OtnjHzowWovxtRPX6T1aIk+moO3umcJvdpmon42c0ALWGycmM8w0bUeLYhBd7YhDGChY
         S15acFXPG33sMmDInsV/DB9d0dKOY75iugzjrP8JmdqBkBeOCASS6eVInOqzIyYmSvEM
         1r77zKpgUenUmfFig0xStCWnuvie2ed1sEwJyDYnJRML91f9ZzLs93zMwhlLxiJbRL90
         I6og==
X-Forwarded-Encrypted: i=1; AJvYcCWbM9Ix6kI5Muv4o7iC+g/8WkuFvWgVyqDZ2KGYN226r9mJJVyBCeQXOz6UNDac6WJ5SrNyiDSpVjM0@vger.kernel.org
X-Gm-Message-State: AOJu0YwxTnT9GQmTJdSCf1/a0a+11rgFZcKNJSZk5cD53sGnfHRF0coK
	J+KJhicDHK+KGTom7RBECg0a5AfNx/KoCxZ13/OjiZDrTVQZbNJAyx5l/OQ8qm22YR51L3vLKfq
	2JAQrT1ueitXs1007YTUHuwqGcATg1J7MtD8oMqt7TVSNibA3w48i4evRahAcSkDN9l+4M8Mw
X-Gm-Gg: AZuq6aKOJZ60Cjv31DWn/HKGCnp/1+Czv/HKw9Uyuh4lc9HoZVdkGVj2CTN3LfdSAGH
	WksVKfnXN+/oNeDOehdHA0tf4wVJ7Klaq5R7p22bOKdAfaIfX9QtubTtJFyiu0vaQVOQRyfg7X8
	LuTdBw3XuXTV9RGUU7QFzRbTRg0nVoE7p8MSfZXpGIOEef14zKU/aptPH81ilHRhomSFF+Gr9ga
	7R6QnrYaDXE67TLxxpRG+F6nb0e+f627YF/mCBTE65PWQlgmb1ofi4EWZG5T7YXMUzH4Ieaq1ES
	p7EMv8vWTuvJCWe3dTJRoge8mM++jGMzmdGKxC8w/BZzBPWAmZyHCgwls0dHarIqcZt0sr4IEHw
	KkS8DFGhxsyS2ADeO3HcjaV83Jj90QQH5vFiVzjtjuDvRYrGzhilQl1OqPVFN/ak9L2WzwKy+F6
	Gq2tjUgmvd9E2QIVFTM9+GPkxkilIa7NPhKKA=
X-Received: by 2002:a05:6122:4893:b0:563:72d8:ea6 with SMTP id 71dfb90a1353d-5676a92860fmr865043e0c.10.1771002345038;
        Fri, 13 Feb 2026 09:05:45 -0800 (PST)
X-Received: by 2002:a05:6122:4893:b0:563:72d8:ea6 with SMTP id 71dfb90a1353d-5676a92860fmr864991e0c.10.1771002344545;
        Fri, 13 Feb 2026 09:05:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068e5df8sm13506601fa.29.2026.02.13.09.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:05:43 -0800 (PST)
Date: Fri, 13 Feb 2026 19:05:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>,
        "Colin K. Williams" <colin@li-nk.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1-vivobook-s15: create a
 common dtsi for Hamoa and Purwa variants
Message-ID: <uc3fzq7z7levfxeybetqh6yay37h6aqtge5kdf42zy5xayzbf3@imzp4vwfauov>
References: <20260211-b4-vivobook-v2-0-9f500415d2ed@oldschoolsolutions.biz>
 <20260211-b4-vivobook-v2-3-9f500415d2ed@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211-b4-vivobook-v2-3-9f500415d2ed@oldschoolsolutions.biz>
X-Proofpoint-GUID: zJP88lyorI0uRVwoR4HFPb2yXCETPzYo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzMSBTYWx0ZWRfXwvWiIHEtpoyS
 StunozJ5py9N1yXnu7nSVToNucrGTvFi3enfDoP3zqIIIlgXgDhWGe9vV3P/vb5HGHZIjMNKrNd
 4clg3QaKVqp+aTZktNbYagf4Fu9ZZM2StH9jhRiksO+B9ffBro7TByIYjrdDgigaS2nxZyGt0b6
 x0cZv9golM5tTCOwymMekWRjCBlF+CibisHPsoO/2c4iBgScBbl+OgSxXAwK59oqMjXL2/NxHMT
 i2JRTyNdZLwYYoykj32OGsr93g210dQmBkopiwjPiMzxCcOsk7ygQqbCIC939/6k9gUEmiI/ies
 4hc+nU25VHDcZHMbOssvQivViwdNb6gBkQADUIdGo3+cnbMTmy3d3aXIe7H43oYtG/Eo5SADUbi
 iIuyBSZrzpGR6kYIq8WBfgrvND/U97njx64QB7njeBrE/Tt9kzP5yrydfyYQWKCyHk8W9ugYIDP
 N+YWB1javOMypSG/34Q==
X-Authority-Analysis: v=2.4 cv=If+KmGqa c=1 sm=1 tr=0 ts=698f59ea cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gxl3bz0cAAAA:8
 a=MmgdznzwAAAA:8 a=EUspDBNiAAAA:8 a=pYpu7gQf3dW-m0xnbQsA:9 a=CjuIK1q_8ugA:10
 a=XD7yVLdPMpWraOa8Un9W:22 a=kiRiLd-pWN9FGgpmzFdl:22 a=bHFXaHSPdiGCh6GRCv3g:22
X-Proofpoint-ORIG-GUID: zJP88lyorI0uRVwoR4HFPb2yXCETPzYo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130131
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265436-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,hotmail.com,li-nk.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4F5011387C1
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 09:37:52PM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The Asus VivoBook S15 S5507QA is sold with x1e-78-100 and x1p-42-100 SKUs.
> Put the common part into one dtsi file to be included for model-specific dts.
> Include the common part in the existing Vivobook S15 device tree.
> 
> Tested-by: Colin K. Williams <colin@li-nk.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  ...-vivobook-s15.dts => x1-asus-vivobook-s15.dtsi} |   28 -
>  .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 1425 +-------------------
>  2 files changed, 40 insertions(+), 1413 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

