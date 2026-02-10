Return-Path: <devicetree+bounces-264400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABNMGRsli2mTQQAAu9opvQ
	(envelope-from <devicetree+bounces-264400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:31:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA0B11ADB2
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 913433043AD3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371A317ADE0;
	Tue, 10 Feb 2026 12:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bcssv0iU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kz8CNtcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6D42BD0B
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726661; cv=none; b=qD3mdjISzmwckgOks+Evwd/BaOQF316NEtOnnWx301JWH6zLUVjsDBhpwoB1JD6N5MulscFRLoUNTXsa7vO6UmFaAlONlOAdPNmr5TybnwMBShB3HJ34rmlbkcQdg7g+S6hN1holKbqbQ63x6d2zJJRxksJF3ePwQiJpCf/q6Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726661; c=relaxed/simple;
	bh=lg+yclFuzxE5QOUV3TCxMaCrAfCGTTotlyxf3OLKseo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o1aJvooq0V7hmNQk0mNmojrbOx9c5TIZVXbNRrcIJzumj29jX5khHPNELqMhP2Z2zkHN0ciYQxnqXkvU2gH/HrnR/6PUbo7pNWzWB86oTOHeAe8NYslAR+TrZtm9+dFNitLqwKa3Hm31CGe2qpHTJ61PNiXlZS63CEqFR3XqFhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bcssv0iU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kz8CNtcr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AA6shA1172336
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WgGxsAH798d0Fb4vc7N1MNqK
	Gzn8wg9LUKFRfpuVCNg=; b=bcssv0iULIuA2jNIhz65RL8DrM3Zf1ebcwFTYheT
	B9EizwIWiNGuS+qs+I9KcdMxLD+wsGdxrYuaTC4SjXpT17A8+ELZFQUKdXONNOGu
	JpAc2fLqgU/l6homh6cj/hWYs0qEZ4P31+yraenl9NaBF9la5HFLeeyFbsQQE3c3
	K8OfX72nbStPuSrYbmmvMIzs0/vjOlQ0zPPLqH8/pI2NyPhIdRrOSAYmOEEJBa0s
	WA53K4nCq9++TTmyiWWwtnCPRgKNm4s2Ddzhzz0k8G6aTzSfsY41cZJVw4FEwDUW
	z3cDgZiI97UGUBMbg4u0sTIsFI9Obtt9l0PVS+wzF3svHA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7kftugu0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:30:58 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-948e9df7924so3031162241.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770726657; x=1771331457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WgGxsAH798d0Fb4vc7N1MNqKGzn8wg9LUKFRfpuVCNg=;
        b=Kz8CNtcrUJwAm+Pj6FxZfdOEZoIl34TlceJJRnWVJm3tw6LKs9v5OjCJFn2C2SFKgY
         xuECU7VRLQ4lFmmyWjTYjxsJLbjl82hQSsarLsFqjeh/qSX/7MQrAi29EZm0gMNKa8Pb
         4WTE5cRTtnGJHucDfiK6idmGkYZSICUzolDQXhls1AuMjejbT1yuhYCIhJIckNQjJSdK
         b/4gYdots6DIbWnAD56K+SV4e2wRkzstU968aze+mgXWE4dqgzwK7tjJLYrohMrO3Kao
         1sj3/dB9gKldIJt33vOs8QIG2/119GG/Qu3lL/HJHGEupcf3Tl8TdNpk2gqyhQDl74Ml
         W1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726657; x=1771331457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WgGxsAH798d0Fb4vc7N1MNqKGzn8wg9LUKFRfpuVCNg=;
        b=f4bAi3nOUzQmyjIQ++86BQGtWdyfmL+rrBos5h5NpD75hG/UUQUXsR907lM/dy7ab3
         7bNRTLzmDispJpxWCLuoDHVLqhCS81L9f2kNj6sBkJO51zm+PfV0yEDbNzrQXMgtBuYz
         mNGiIdqdUObK0eeXyWSKDNtdCMJriY8wmAB8GjI/V2nN1ypnKMz1smYKiHgEz9WHCZzp
         lsEzNPGqyTkSGmbqtjJkTNDNeaNx3h2MWPK4OUE4/5M20WFUUosp6jJMDJYOTGbRJ5uM
         JMKOw/yq3dxfYjr65fr32thVsqnto2FwD+YHh2DcEB/TIikysgYuzyOxtXQFACQ/kDDw
         Fy8g==
X-Forwarded-Encrypted: i=1; AJvYcCW5qvuFYU3ioXOQvXpDxSfQhBzfH5U14T9SkkfoJTt3N3H/L7v2X44lNmp5sETkbnQr4Iye2IeD98ez@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxnpi1EiY4QHxdLLb39UDD9HhLwcctZjJ3CfhCqYpXw5v4GLZY
	yz+Orezb+JhlCuItG7HxQ2xW658T6CxsPWZr/2StZilB10+hK0mJ5UU4WQdrXs0GWu7Hr0XpXcF
	0gNu/iqYFGa7s/3n6NabCkSU4slXpz/Q+jvjcmvAurhYAPNL/u5JlJzmhlvLqMfgf
X-Gm-Gg: AZuq6aKZJCk+g4KPlgkjmvF58baFvVG/WumR/FvmVGkccDPfb0wIo9MG19FkR2hx6DE
	f3Zskie3QxPr2ifjwsCULz878JafEYDriDolrC6BSgdZrVRa49Nyjha9ca3rw5T4QuKf5eEHl1U
	DMyjRcnr87t82bCsHKpC2xqKY1J20jqa18kBH9ox/e9CGyexCUfQrMJhd2AGXCKWv5j+xh5eFyV
	Z4Ibm5tTw98alw1hi0IWM3BqjcbpmAiwsETVFa+WLnS4N9VZVs21ciAaJIFNH1fAN+fVPykHvzL
	sRr7rhoyxe13ZUBXO8kGqQBiW8WzsULFoMqRTONEi5GDQyhTHYB1Un8Br6tHmsHwLyT0RfHMGtW
	dcZGoXsbXT7hWvN5dKbUoXNWCjGyMmgExpHQnzOlaMCkPV5aG3EWxybctVSZpEK/34OoRJT8QsP
	TQLEOE59bAd6Zp8f31dHBo30AmhicEqAhlY3A=
X-Received: by 2002:a05:6102:4414:b0:5ec:f42c:79e4 with SMTP id ada2fe7eead31-5fae8a2c635mr3797004137.12.1770726656698;
        Tue, 10 Feb 2026 04:30:56 -0800 (PST)
X-Received: by 2002:a05:6102:4414:b0:5ec:f42c:79e4 with SMTP id ada2fe7eead31-5fae8a2c635mr3796987137.12.1770726655878;
        Tue, 10 Feb 2026 04:30:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5a1418aasm20808e87.64.2026.02.10.04.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:30:55 -0800 (PST)
Date: Tue, 10 Feb 2026 14:30:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
Message-ID: <fslxl2dios4zbfchm5egnwrspqszip5teyp65rbihdbriyodtt@q4mbsmdhnxve>
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwNCBTYWx0ZWRfX+/Je5rVrbCvH
 W5BvNJyKNjgMxOR2E3iMifAcZ73lwW4gjHHMb8vsGSFOpY/EwweIPct2hTsWLKI5plU6aM4bDUZ
 L8C1sCc1bkCD8Pkt5wTJMOoeBwCPNunSHPH3Vf2l1XA2jrdiH1Ga+W1d95pcdHB6sjsaNn1fqwC
 cGqepZ+Mog47+HrlsHT3fDVPCyI0XyGPuC4AZfs5Im/tLnKK6/K9ymkcZCFqKX7nFx+REvh4fBP
 Jc0fVUqBxhC6ptM2Da0U/wbb051GVYT7OnMSc+hsXr0c8XZz68yNT3Bg4Te+CmkY2kSqDiAj2HJ
 WAaFgpnz6I6jFSmbUgB/qVzzSc7HDs2LeU2l8YcdAVrRTnwEPB5adXPKWS+gFnIhbfOU5sIwOg8
 gfQNx1njv7MLqStGyspPkRFVIzUY6qBVTabrwasy9u28y/KGvkmgkxFFqVak7dllP4UTA7BDrMm
 tF9ZcxaeFZCmO386IiA==
X-Proofpoint-ORIG-GUID: 8hElJIdIBzvh7373BacnXQiOyLNgeZZf
X-Authority-Analysis: v=2.4 cv=XfuEDY55 c=1 sm=1 tr=0 ts=698b2502 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=l294Hz_FD5paY8OFZukA:9 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: 8hElJIdIBzvh7373BacnXQiOyLNgeZZf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264400-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1BA0B11ADB2
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 04:08:21PM +0530, Umang Chheda wrote:
> The Mezzanine is an hardware expansion add-on board designed
> to be stacked on top of Monaco EVK.
> 
> It has following peripherals :
> 
> - 4x Type A USB ports in host mode.
> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
>    - 2nd DSP connects M.2 B-key connector for connecting cellular
>      modems.

I hope to see these being described as soon as M.2 bindings land.

>    - 3rd DSP with support for Dual Ethernet ports.
> - EEPROM.
> - LVDS Display.
> - 2*mini DP.
> 
> Add support for following peripherals :
> - TC9563 PCIe Switch.
> - EEPROM.
> 
> Written with inputs from :
>     Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
>     Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../boot/dts/qcom/monaco-evk-mezzanine.dtso   | 189 ++++++++++++++++++
>  2 files changed, 193 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

