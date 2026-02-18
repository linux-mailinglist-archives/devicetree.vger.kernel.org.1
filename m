Return-Path: <devicetree+bounces-266447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ANFM77FlWmTUgIAu9opvQ
	(envelope-from <devicetree+bounces-266447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:59:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30331156EC9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F77D301C890
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1362832A3CC;
	Wed, 18 Feb 2026 13:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GtviEALU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cb119fED"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0EA329E7A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771423033; cv=none; b=AXoQkSTpmZN3YPd488kGBcSlT33Du1CtGk+Zvnyr2CGR6zJuGYBzdwobI7TCqVnLSo93HckUU7QO2ZHQK8rDkPYFPdmxtWTvX4kiUReGLa2rcmK7BrmeGEZFVj28tUHbrShx1r4NF3cg5SWvC/Cr/CMfJwDVIv7IWl8KSWTSD8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771423033; c=relaxed/simple;
	bh=MSzPACKbUGQEvNgIeWCQPkVoVNEssZNKauJSrQVB8gs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5hWrnVPItV5ctxDANeJr04iE1cSfl0ycr/djjuWGeqticasPKl01eWKoNaSMgqQdHWVviaERpilfCNpANXd+jbD31UsrteTX+uIyuaLlMoPrsALzRwidCGzB24WS6n/qOIIVA9wQhxT6Mr3VaiMaOQWl9VvHOGlavtOGM6KNpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GtviEALU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cb119fED; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IBSFRF414087
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BmSkQ1H6aF1fRqkgmk8wrB44
	msStnb43Uv/ZPNl/kHk=; b=GtviEALU5hVWxDOMLiNJEAjteqENi7x/viXkyZsm
	vRg/1TiD+X24stBEochHNKmLOyh+EArMjD7f0ybujDFHzIs9AnE1gErPIZrrNWIg
	kaTP/E/JMGRbJH99Nk8F9/9QfQDhvxwfHNV/guNDqW9tSKEesvf3IzbD2ZYVeIhg
	zmvbOJ7P1HPTBcXApAKB6SZAECKXoDLFu91oj4GL+tdCT5o2so84zOWoIPtVi2hk
	sKsHQaU4AeSIzDj7uefjAtzCyqYif3gq3hzibjrRAgReDLQNS0zrN4snhJKK47sE
	3oyths0mabHbFCttcS3N65p8yuJVGmg79K+4zRIOQTRl6w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd1q6swnc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:57:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ef98116so3837915885a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771423030; x=1772027830; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BmSkQ1H6aF1fRqkgmk8wrB44msStnb43Uv/ZPNl/kHk=;
        b=Cb119fEDeQFoXUnCGg/ZalZKHGQLibk7UEw8DxgtS7bJ4KIWNtwdPMcEYeXP2uNeo9
         ggnIqHIeEpdkD95ENKyGNk/aZpA7UOdrFoGDx7b2HcXbjR2HidVcO5myf4+ehZ2pPQMb
         oy9ks+a1v30M+JszUZZYw80dS5tW08xujISE6sEUuWYMnzbyn0MGhHz1Ezxm9e+VdXnk
         Nw3m8VXGWeWaI/7LiiIEyso3w/6zpWxt7sDQ7w4t7ImJEEjD+Wc09/MKzKQBFkTg/02j
         QXKHOmcIjVdKFmd8PPRjrqmmC1GKR6jADL/D9P0JXrbcDHv3/ygFf9MmOEoyYHYK/Gju
         cjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771423030; x=1772027830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BmSkQ1H6aF1fRqkgmk8wrB44msStnb43Uv/ZPNl/kHk=;
        b=pZrV7eA20dtguzL5OAotC/x3RHS5eyz/oxuQSLjf5eZlhLuasgl8ZS3/cuhTbNR3/z
         ujCapYh709f7qM2q6hVvUVbjfdN2mBzTh8t+LnZNl9zaIgIHGb7vqI9781j51e83IFBA
         UHLHF1bP/micIhTjPVWY9Kl7yxrQ9Huqv2XG0DVbtlz5nfGLilIJ1maVuKRPco0AhPmA
         Qqokk2aVGj+40eCJsVr9/I6SvFHbKcIMMU+RQW8ferznlBb7FuhyoRspoBbI25+EomXb
         8ROGsHZfZxj/bhUZ/XCxfKRv2tLSIVIvHgJ2cQfrKZzDYMMs6Nvj3ppElUP+VMjinbcj
         27bg==
X-Forwarded-Encrypted: i=1; AJvYcCVfUut0ZYw532CmoVhUKhvy48rmaovRTDRdJ59no8ys91lM+RWeU7PCtVijipLghVuNXCicHmOvxy+l@vger.kernel.org
X-Gm-Message-State: AOJu0YxXnxBW44vZF/y3KxRG4pkEjhYg40OdcVdd7BBCtmWq9HzpgQPR
	JGbyVPGyi70SoRrtKOwuB+4vIgX9JZc3acX9b8BsX7FqHVgxnIFPcclgDibFKVK7BoMlsibZTOv
	Se+8eKb17LBjqC0aXiTbOLJBlXvYTI4i/Tix2w9Sq5IaVu4TuJI/OzHgygFZMz2dj
X-Gm-Gg: AZuq6aI3d16YPr+OWwJ4BlpqAlvpa74WJBFFQMF4vGhcynSM+mQtlSAQDI4DH5Ajok6
	9TBRiEv6/RlM+Uvj1t00OCTyKPqhJHyxi49hvi628yGfsMsxj/tjCWEiOSHY7VYrbq5K2CYtptV
	xPZ6OV8ChgPRpn0a/dK/3nZ7zhZtAOQyRFN6qhe7IPK1pKOSIqRhiz4BwNGNzfy4G6VR/dLHnCC
	nSgPTnOnKPMIwPNw794h2hFXWqhlMhN2j7kjJnnOay9jMascshK5dKnfHtnGm0F/uGPwhfTqnaL
	ohPJH8OAco90V2k75sRQ7dcO8ZK8hyCwg1gVOVIZ3l9yK72NqK6eWbZBOCGtzEp9LOaD4sZC3cF
	8cfs1eDUFAtOnV3l0Z+CUlfTnqK4vXhPRk/FMLO/LEp5uHA/qu/bBYBDGqTJAjajXl75KUPbCSZ
	eGISbN38J0rMJFIlvOem7jUZEusryWTZx23dc=
X-Received: by 2002:a05:620a:1908:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cb7406d603mr203931785a.40.1771423030077;
        Wed, 18 Feb 2026 05:57:10 -0800 (PST)
X-Received: by 2002:a05:620a:1908:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cb7406d603mr203927785a.40.1771423029534;
        Wed, 18 Feb 2026 05:57:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a50cdsm4587769e87.58.2026.02.18.05.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 05:57:08 -0800 (PST)
Date: Wed, 18 Feb 2026 15:57:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, janaki.thota@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] Bluetooth: qca: add QCC2072 support
Message-ID: <ekjymc3he772uxqcwailweeso56uoz754o2kmf2vgtfjmvyy3l@dw3kqu7hnda5>
References: <20260218114955.3970974-1-vivek.sahu@oss.qualcomm.com>
 <20260218114955.3970974-3-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218114955.3970974-3-vivek.sahu@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=K60v3iWI c=1 sm=1 tr=0 ts=6995c537 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=EK0TE1-zV21SCmVBFFsA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: s3oAEukebkKje3ZNZElqDRdjwpBZKNSi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDExOCBTYWx0ZWRfX0U35dlCyRRbK
 CqukkpcuGe7ci+OkknGOEzz/+SRmt/ZUa25QL7bRwidKxnu6u1V0FmN6zMYpYZ5m3DgQGlwzT6W
 NcmayO2X3gCfQoDEydyAnW1nQfzEc0sIuMp2hG23hlyggujTHQa9biIXPuKpLWKwOPaO+g8Ze60
 idqdSTuS3Eh0bsUQRDmmZ2/MOfwv9G4d2SdRewGaUIqRD0NcxfrBIu1TndkMbHS5amr4sB7X5UK
 +gG7NNl5FhH/0Lrp4/0ekHO/eN3JTEFBhlhPpZq7KSfWWP3nUUxGi9TcJ9EIv39Pi9yQEKAoMaV
 mZFuvSmhQnBG7JTKO7RGBq3uqh0nWiQiTUWmXbJ3lOQcqyxwv9iClxYyYRKcsw7M2PmEbSKbvW5
 kIO9Eonkz5X7Se7fL89isYgH4ecsZ2K2mjxSX/KVbtPXvF3PjURHTnnqDXfvaJl44VCEjHO6BoJ
 NvXj8jf1hdbsgUOuotQ==
X-Proofpoint-ORIG-GUID: s3oAEukebkKje3ZNZElqDRdjwpBZKNSi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266447-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 30331156EC9
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 05:19:55PM +0530, Vivek Sahu wrote:
> QCC2072 is a family of WiFi/BT connectivity chip.
> It requires different firmware files and has different
> configurations , so add it as a separate SoC type.
> 
> The firmware for these chips has been recently added to the
> linux-firmware repository and will be a part of the upcoming
> release.
> 
> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
> ---
>  drivers/bluetooth/btqca.c   |  8 ++++++++
>  drivers/bluetooth/btqca.h   |  1 +
>  drivers/bluetooth/hci_qca.c | 18 ++++++++++++++++++
>  3 files changed, 27 insertions(+)
> 

Provided that supplies for the device are going to be handled by the
power sequencer.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

