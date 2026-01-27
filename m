Return-Path: <devicetree+bounces-259845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8A6/MtKkeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:43:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE2C93C49
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E38C3025281
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98BB8349AF9;
	Tue, 27 Jan 2026 11:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gily/Gxi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dqr56VVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBB7346E71
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514081; cv=none; b=daBu2ijHwNeDnR3mPyV6uCGDQiXCI/r/FXzj4qD11jvwpTboHXSNkywRHotwQf7K4B4Q5qRTv9pYCNjIwlyP2pmtMAqlpdXDEiHzvym6vUlWwWcMiguHfeJ2PjWf17xo5pN6OmMS4LpQ5dzdwgf5C4tQfTxQ3K/9E1XGFcYb7h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514081; c=relaxed/simple;
	bh=i+IpGhnnMVn50Yk37FT4r8ukxy5UUikxDIMDg304h0c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LeSDmgGV5T3iTQrwojL9TTkmjbQbsDbwPHc+4b+qzf3qzaAoCE5ubvbQXiefJSalu5YqpVgUie7OKFXYhTHHr9tNOrmDjOBuW/tGHOHMu+GGvY7EABMKMVHvkuZCsyv4/XiLB+0yKcc23GuuViFpSjSYIJCzD8IXI7mjND/tZqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gily/Gxi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dqr56VVJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7QGGR658432
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4mzErjaZjKsSBO5rivgnxc1f
	WTPgTKQ7g46MzCj6fb8=; b=gily/GxiBx6uXJF+LFDGBufN9jHLFSJGZAaNcli8
	4rAUjwoCYh9GJINR8gtNskHn81V8/QcQJ0wbe2+AyWp9t9eSpWD4flU4GWH6xLb+
	vxbjMeRVhjrJB7xmhMsW3Tli1V+ARxa2NKeCSCg3xrI04ZtgoBnikKODPjNOYbPm
	zCbz1aqcOPtI7iZ+HOVUj/zH23SIZEgaXrXYz8rbnveQpH83iWvY1n3OC3KSpq92
	50FHP0YR3/LSHcSnZi4wN+8BH4Zb5E0T2lqfYEQo8ri++EsXTSukc9HxVQWuk0PE
	kARdbu2ZeXPeBVi0Hu/AIVqRKdrjNZFSb15SqRWpDfjB8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxryn8vg7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:41:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c5e166fb75so1421159985a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514078; x=1770118878; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4mzErjaZjKsSBO5rivgnxc1fWTPgTKQ7g46MzCj6fb8=;
        b=Dqr56VVJukqeLOwgqfUe1cRIJAcbHwxh/wgrsMnrcXDo72khQkRSypeSFq9oXM9PV1
         iRcZ9IZoAUjEs6c8pv0GxFWtWgNMv4M/pG8ZqMOgb41kZdJ6jbdL8FpVftbYg1xZ7qok
         VyOtUvdwskH//WyfmNMLPEZP6xC8GJ+6i7PZTxcakXIRZT8NfRagTN39WNwB64An461x
         xHvnax1Ql811u3w4/pVkyj6zr7LdC1gmnTeSNN5mcvH4GObfyptxUu3dr4VD+i4De3vE
         p5IfARJ77MxCB9PC+4/iXH76/AZu5GpaRqFs4sf1uLaEm9NdfC7xchxyNQVrQrwvQd/S
         1wEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514078; x=1770118878;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mzErjaZjKsSBO5rivgnxc1fWTPgTKQ7g46MzCj6fb8=;
        b=fwwtGWS/v9r/2/PHdmTnkSmEW2yxS6j06sgugp+Bu8jD0N/EaeOrq80ylFrLueUsGW
         CDtdmTMtiF1mhAKYZ9fXY/6xneG/pTATrj1Ui2xzwcY4KNukJmK3K5k1iuLRGJ5ihUF5
         SqYmQWwlRK7+1BuFreP+dEduRdlvrLzD62VJQaKfzZRXHDo/aH31nhb0vx8/NHAlGB+J
         /rdL0y2+sHfDCslR/BcBL8zvn5QJHGJAQdDG/5TsYJCcbgC4+l/YjOMxbN/DzQGc/fyP
         4nH89zsm+/M6caEGtLEngG8ooFv6tTELZh3ypjZtECD9q3cdJBj2boF9QYyUE6ry301s
         w7ng==
X-Forwarded-Encrypted: i=1; AJvYcCVsomcqUfH/6e/MTqLIBNHygNqgltNgI2K7OIKAaOq7lvmRHhbpNLEF4NyLVmnyejM2MOf8R4KsmDSf@vger.kernel.org
X-Gm-Message-State: AOJu0YzdBybs7S+Ypxr9T9sP7s5nu+7S8AR/uBHCS1hU4cfQw2RpgGrg
	fZSVhbnwYUmw3ZM/GbbSdMtxXvViep0gkgUdAuHk1kWUUBj4EvBiWJBdqPR1OE75tY2Yv7qdkYb
	AguP/ioVt91bg5vbtQR67xjc+Z4ro2YCaiQUXBSWHOWsakA9BGJIK84LbMD7eHCwm
X-Gm-Gg: AZuq6aLCg+JdYP92cpRE5Cml3PkCZDdnxdM24nE8xOixwUjuTww8+kLhbjgBJOIrdag
	Rm/x4AWlJh402kwzRG2sGIzomEBwwylX+mZyB27NkU/HLG9DQdPitv3C1KfHZbL4xQpRf7ESAlx
	PT6GXiPIxlWOyQXlyaKit2LWF6gaWOsuXhGJC5yEXPoaVF7eYZiFF3qW6KBa3sBENeil5x9KaeI
	op1B6KJzz9cCrXZ9ajAICXH0XwzaEgJB/hBJZf3pK0y5z6UKVWnOj4N/67al6q1xQAMQUURKULQ
	CR/BG4r+03Lb5Z/DyaakxIbkINsKRrQwvd+KRiWmB1U/qrL/+8DeRJ4EnXNMlE7nvR6MkEKQ9X5
	C4T/phV1Np4HyJCBjdxfU04Fz
X-Received: by 2002:a05:620a:284d:b0:8c5:37ad:160e with SMTP id af79cd13be357-8c70b919dccmr150586185a.89.1769514077776;
        Tue, 27 Jan 2026 03:41:17 -0800 (PST)
X-Received: by 2002:a05:620a:284d:b0:8c5:37ad:160e with SMTP id af79cd13be357-8c70b919dccmr150582985a.89.1769514077098;
        Tue, 27 Jan 2026 03:41:17 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066bee687sm87128865e9.5.2026.01.27.03.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 03:41:16 -0800 (PST)
Date: Tue, 27 Jan 2026 13:41:14 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
Message-ID: <6lieos5uudkgynizozrmzrj5ov57frzzl65b2fpanwbhbmehot@z5uhyv4ipyet>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
 <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 88y9odRtuOQWsdqewalH08uOvzDvmwiq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NSBTYWx0ZWRfX7dpbyHb/dj5d
 BoCovVEnDKkQDHeCPZoXW2En4x7O0mqIRg0cXR3kkQyD6+eaFNKGdQkT4VtjYWtgMaf/S7Ms8kf
 kKxumpIMZcIc5zVCppJF1BCKlB8h/UCiGHSQEiGTrqsrT/OZ+6xn2JnNsbtASn208alPR6kSRzk
 mJ3OrdOCKDO7DmJmSoi3dlm+FCJIsE3BvaDcfGJQjytKOO+gTLTprGdZhDZGlvInxFpmGSIZCt5
 MdPEAaKt7yxYL9BO4antXrGZIHhmXpxFZZrJjjQU3uT+8JG8bCLvEs/15/mqndBPE+eS24zQjdy
 SiKn+y/UF4Gjn3GXnQIfUVgdFNgBkkZoT4o/avKHX3xVouvXkjzPt0BPsWpHeTztC8Fn132wVMe
 l+u6qV3B9XxGOM9d09AWMBXE9CdEY5j9TJwEQkI7rSyABMPm1cw0fR/un5H/Iqv0ZfNkTAXdA7H
 x4Qp6HqKKfDGBwyFP9g==
X-Proofpoint-GUID: 88y9odRtuOQWsdqewalH08uOvzDvmwiq
X-Authority-Analysis: v=2.4 cv=FsEIPmrq c=1 sm=1 tr=0 ts=6978a45e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MOwG-Syh1sNcuLoOUM4A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259845-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3CE2C93C49
X-Rspamd-Action: no action

On 26-01-13 14:13:32, Konrad Dybcio wrote:
> On 1/13/26 1:33 PM, Abel Vesa wrote:
> > From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > 
> > The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> > controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> > PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> > DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> > 
> > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +			snps,dis_u2_susphy_quirk;
> > +			snps,dis_enblslpm_quirk;
> > +			snps,dis_u3_susphy_quirk;
> > +			snps,usb2-lpm-disable;
> 
> Other SoCs have a list that's much longer, please consult Wesley if
> this list is enough

Checked with Wesley. He confirmed that this trimmed list is fine.
He said he dropped the rest since they are related to the power saving
features like USB2/3 LPM (l1 or u1/u2) and we don't seem need those.

> 
> Konrad

