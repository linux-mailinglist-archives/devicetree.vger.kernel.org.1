Return-Path: <devicetree+bounces-261359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OD7EM7UzfWntQgIAu9opvQ
	(envelope-from <devicetree+bounces-261359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 23:41:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2FBF30A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 23:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 382963040446
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 22:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D6F38A9A6;
	Fri, 30 Jan 2026 22:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KaSLF/93";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eGXiBpIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE7938A72D
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769812742; cv=none; b=H/7/IalPt5zFWHbQivtluJLOWCcX1xX9CAQMCDVx+N3tZmHv6v8+SL43f1rULLda9TzurS4IPzTGdhQdsPmPjZUgt1ZzvSs0Jd2nd0l/PsKrqTkMqFYIZ2cdvicZzTHPW3L1zcFQs0RNXu7vxYX2qwmOR711Tz4FUICecRPRVQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769812742; c=relaxed/simple;
	bh=aEpkdzaw+QsOdopyxUTcxGofpnjOUlbZXZ2nukqu9WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A95/+Cshp52j9ZClTCMmWlRuD9KoxtbCTeIOQQzft/l7dZL/UkTEzwWCWv62Wex4H4nlgY8dPOjTtplaPNd+YCsM+6zKfc1zufp35tXl5dqrb2p7ijF74RoYb4FTx4fEB8Zu+yZ8ZUdwEZ3BQbN/okv/ZmvT1XTNNCtzH6VkkNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KaSLF/93; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eGXiBpIx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UKMwlj3515110
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:39:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=epBBXCbIvXIY/ucim1KjtcUq
	CxZn1kZ7yDcawfqvDxM=; b=KaSLF/93P7M53l4MOzib16sMiYxtEcJeU09p+XrC
	1hiZm6IBYYvf4JAm3pnwBDkGYNXxxyiiXRbFLhgjwOKOkJPWtb9X5eFM3G+KAcdE
	FlGr8L5osXega6D6IvubY4HmweeNT3y6hHEcnsV4m1Kp/1HQFBJdr4TK83kiWmyz
	O/w0Y/SBjXQWLI6y7wGbM4eHiXS99oxCFGnu/R1aglxW5E3UVkLyJcWFZPvgNHGR
	LJhDz6q4Pi5EfCsC78EVd+X4ur2ynvjThhoCJQA+W9leG2x7RxccGaTuwgmEvJkJ
	pvNzArRkP4qPo+x0qTQn5aGr99pPWQIxgN39gQRK1o7wsw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsfb4gw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:39:00 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b795cff830so483159eec.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769812740; x=1770417540; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=epBBXCbIvXIY/ucim1KjtcUqCxZn1kZ7yDcawfqvDxM=;
        b=eGXiBpIxchtl+hUEbk+ybdc8XPVRmaYNqUP/K/z/l9I6mHVv8GwxiM26J7x7or+9IQ
         S6+Ly9FgvDKfnOj1tbzZw+ABFaF2f0yEvkw/RC2KjmQsEy6dEDNnPLDqIOYVxeKSA3Id
         eVhpZP3skIBLMI3+iCqmLReXiuR/ntQWj5MI2Rt7we/y/r+QT9rpwFwtHjDUQeiiqP8k
         saa8gFLRGBenRxtmFsO10RrhvmkFl7/eHKJF267jmJVv+UWJUzJI/zzc1tvJHev0QDWD
         HM7O+dSjj252sj3lzVMQY7cMBhlmB2WXm8gi/sRj4wnSNIL+Yldnb5xhxKffNw3ZU452
         vZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769812740; x=1770417540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=epBBXCbIvXIY/ucim1KjtcUqCxZn1kZ7yDcawfqvDxM=;
        b=XTHH1uCg/ycdqWbSt3/ACjEVmluQLEOuv7m3CispUtWB8B4iDCOFYlETmmfRBYeMET
         9yBhh9uYAqluDOHW75bE14xXZsV8nMHnJ81KM/+CSdB+kM8vHzoqvuSB6dXO4Cb4c7tj
         iwM3nhB7NeagFjCRrXOcK7rutEr4yL/gw0RBx2A0irMtw/xaoL/BEUmmedkIj8SSlFh1
         1zWYF+QFMcOpP14dpkiDxEUJqY60oYGwYA053jmS6DhaDEsw/4VTkzfMgtUF67De8gIo
         qy/SthqG97qlBiqjzkIp9ZPn4iG1cQORfJ1WooJOeJLXD1BMGkxslrV219HJerWVvGEi
         z1+A==
X-Forwarded-Encrypted: i=1; AJvYcCULOrFsiUyugc98Yck2SJhyOuJXdGAF/jgcN858EFkb0neerlOkBeV8ar7Myf2vcQRSaH/ToMDokfCn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhh9IV2o3hB3jXl2ntphY7I+dv5mLm0ScU53MZJmmmJ2/u5hW8
	BYbBRm4HtTi5+szEqxg5ZhInRZ7OEcZdL4Gu+tw3AbyhLOo5G+bmPZD4I0VAOdQDfejjd5kmaKx
	5XQzfVxUAw0RgXuaJajc+sm6WsqPyPdSBtKAgCdVWXbX0v5T0imXew7PdwpNSmvtW
X-Gm-Gg: AZuq6aL0/sT0GWipVkMHtFl+TQqy5zR9bdehtE0QK9cJKPsauh+IgrSlRYnyijuRMg5
	3RiUavkhCWG6uOTNT0pGnqTa+rKuK7GcYBWzbw8y7aKv60pZshBaPgIfbnaAAqrD8+6onuTW/qY
	wYA/mb3Bm9lEJb54yXWI+OHVFlifu+Y5TUWPUTuusqRABeKyiRlZlXD5SD5LTA0OWZ1+N/BqSb9
	Z0+0lB2E0ecUyVVE/2Ti0hRRJMzu9CWHDHTXyfOzUTpDkt/CHdT9EjWuHzK7Av70GvFX+kNEJ9T
	c2v5bNRWjIHIpzcu1vmo5C2bIIIak8olt6qE2aDuN6HLq6/WgbvHRPssysySnhP86/HkDNR+/NF
	zLjvi/Iq3HQhCbzqbs7GXrOcHK3oqml3VA3aFA+Fb0MykcQp84vsHFdgr
X-Received: by 2002:a05:7300:a903:b0:2b7:15bf:91d1 with SMTP id 5a478bee46e88-2b7c890fc64mr2840104eec.30.1769812740015;
        Fri, 30 Jan 2026 14:39:00 -0800 (PST)
X-Received: by 2002:a05:7300:a903:b0:2b7:15bf:91d1 with SMTP id 5a478bee46e88-2b7c890fc64mr2840078eec.30.1769812739347;
        Fri, 30 Jan 2026 14:38:59 -0800 (PST)
Received: from hu-jackp-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1abe714sm12977854eec.20.2026.01.30.14.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 14:38:58 -0800 (PST)
Date: Fri, 30 Jan 2026 14:38:57 -0800
From: Jack Pham <jack.pham@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH RFT 3/3] arm64: dts: qcom: glymur-crd: Enable USB support
Message-ID: <aX0zAXwZVr6qRLrC@hu-jackp-lv.qualcomm.com>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ytuAFiV35nXO8mSKnJIlzJOOWg_jpym1
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697d3304 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DlwQrn3afoSJOZwP7sIA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: ytuAFiV35nXO8mSKnJIlzJOOWg_jpym1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDE4NiBTYWx0ZWRfX8KCnERh0sJ4M
 tLEoRxTmyfwCkJhCOSzkGvTsXUIheISIHE901bn8H72TfEeriiU/vF7/Wr8ZvZANaf27fw0IYJr
 F1A6WLlxnXRpWnzqLHe2NK/+FgJuGOmutle0GF3uq95GUe3x5oOY/el1dOtviQFYgM8cJa69C25
 svB1tj+jEHLLxn1enl5RxZs/JxwLALVSf92SAX90m0cdeoOj/7hp9mVpqwZQA3ESQFszr+jhb4g
 FRfWaWnZ1f5/nWFo6yASp0KVbL9G2VNjggNTvqpX/603nnaBgF2oEIG7R/5TDATwmb8a1zfmUfi
 RH+wdWRwrZXD1Zd+50e3ukSX+SXDUjUka99lfhmVjVUFshjsnzMzsNXTWEzmtOFQjxqqxpbHP47
 H3rVe1Db3jaHzymjs8l7y4A0YwYag7DF//IqYhXavLky07NxW+vliEG4iK17gPEB+xevHdpIqq+
 yIelWMGsmr5WLDenhGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300186
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261359-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,hu-jackp-lv.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jack.pham@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 44D2FBF30A
X-Rspamd-Action: no action

On Tue, Jan 13, 2026 at 02:33:06PM +0200, Abel Vesa wrote:
> The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
> one USB Type-A, and a fingerprint reader connected over USB. Each of these
> 3 Type-C ports are connected to one of the USB combo PHYs and one of the
> M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
> via one of the M31 eUSB2 PHYs and one combo PHY. The fingerprint reader
                                        ^^^^^^^^^
Small nit, this should be USB3 UNI PHY.

> is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
> eUSB2 to USB 2.0 repeaters, which are either part of SMB2360 PMICs or

s/SMB2360/SMB2370/, as corroborated below in the patch.

Thanks,
Jack

