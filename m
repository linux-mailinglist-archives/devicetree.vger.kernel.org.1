Return-Path: <devicetree+bounces-270058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAhnH+OhpWmuCAAAu9opvQ
	(envelope-from <devicetree+bounces-270058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:42:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEBE1DB107
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:42:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2162D30639EA
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9FB13FFAC9;
	Mon,  2 Mar 2026 14:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kI4rGNmP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SskVTc+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B373FFAC6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461908; cv=none; b=NSTeEzeFivVJKOHAaAikh2otjmgZ9LG1ZmhUnpfEgt0xPWKPfh/cKCyCc7UvlUGEypMUCtSbB+/ixrR/VdZ8la5iGe6twJFYUSCRWW/peIe8q1i0sU7MOIiFP3dyRveuoIcsg8buSmaog3hyq/nbS9EJouKpxkFrW82LeB/6FsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461908; c=relaxed/simple;
	bh=23t18syiBuaDoyiGLjw/6hW3FPf0nlgMaKXF5rCREmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YDE1huslNexd+zCINpewRgDUSemPWFKUwu8E5FkZ3ofU/e6nUYytJ25n8G7XREtbe6gOk7UfFfZoeAARMa2e/eAY4W1HKJAjP5GwM0PGPmzzOT3PlkIywx/5lrixTQ7HPOf1SI8ICUYXBCJzxmvBmY6R6pARSciwAOqZZd9qKto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kI4rGNmP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SskVTc+l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62294WmT3752736
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:31:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UFWaxQWimcPR+QbxBkE20FFlYIXJCYxgEXio4txi5ag=; b=kI4rGNmPBH2yeV07
	TaSKxIpv6inGfxq03xOSrYTQUdPDZze+gfNMivzlfbuk/oWYS5ELJQKP5MdGJAJ1
	dUhoD9W6aU55EFujyVrnowiuVWlzkKNGpS/+U//tO3l9kbZW9EUsvkW63lkeTtiC
	sU0CnRy9gXku9E6uzlCxtskRls30I4qYhOdfopvtxTne6t8APaaXoDny9C2VCW7W
	32B/YM4xcwA8CthwZ9eZD6K2EShGI1RsivjxRoZzoGCXl2rwFHOsse6cXCnuKZQk
	wLvz1l6jv719IB9YLIGKBG1yfqua4euPmK/AgqpmASyxkqktG9mr6VuVNNkwcyVn
	c/oyvg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7kq93p2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:31:46 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56a8dca68cfso48381574e0c.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772461906; x=1773066706; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UFWaxQWimcPR+QbxBkE20FFlYIXJCYxgEXio4txi5ag=;
        b=SskVTc+lSAeQGCtpsglMpQro2RZ1zQcLPoOs4I1+/B2QDXXXfN33HDfNjmZyjQaQvh
         Jq3HifDo77rropWKoCpP4jv9MfTFdNPXsdj6UHLSW2c1D6aWWoFZh8u/ccSmnlqpA23d
         388dYseFjQji3zU/9DLjq2hGCDAv5osDqAFxI9p+W+1WtqEh+9GE4RWHpKQH/9xHwXr8
         vDFs0r5UiW/Q1dJqiB9Ttf6gi/mCyt/xbkTwLwAEEcbqCQkHTsbhE6QEHkaNbhoa+LDA
         KNQC3Wx87irh2FGgCbxSvxsVUTNotTKXATYkJm5W7jaVa+KOfK4leeCr5ptpvm2unsov
         9pvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772461906; x=1773066706;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UFWaxQWimcPR+QbxBkE20FFlYIXJCYxgEXio4txi5ag=;
        b=HQB5a4Jb8hmQ/TVrAQ8fzDS0YK5zelsnJw8guxyWWIwDISv+Y9D/7P3xPhTxpE2XBw
         n/XWG+VOhcQ2sKTLsBeO1Y726zB7KiClZAako2XPDgfEq7kVrFXqJAz7zex4hU4zY099
         w8tu5fkn3NnXP8/EOW/UljMxkggcJY+uvaluU2J3c/OVrmGNS7VdWPvnacdBpd2+P2C9
         dmhDP337JDxnma9OuFo7EblF3EsomVJDq+J+jYNG9dkfkNbDnMFyfZADf1t/UrWB8awS
         +OsX0TJytAWLX7OhEncpQRU0RbQjzGFoD+oANhxu1jXxbhzXuc+MKeLNlntkb/6TeXqp
         sqvA==
X-Forwarded-Encrypted: i=1; AJvYcCU51Z1IFMn+LtPB/+S18RI7ZOl5rZmujp6sE/t4gQ4/MDdlS+0t1oFpXA6h7wHtcJSXrqHawUv2ptLk@vger.kernel.org
X-Gm-Message-State: AOJu0YzRTjUA2teMuU/slAjofqt7+UpR9SkFBw6YhGNl6XwgQFMXwEg0
	ljS7AcmbOWcsVI9pHAAbig8fjXogaPTnJmolPs8pjymkqysuRnayg9qKRjqMGk7j76rxd5ZbFtC
	w57YQ1+NpKo9+OePbSI4ClUlQ6LrQB1wqXqlCPX0ixjb80xlMiHJLgI+5AtFibBAQ
X-Gm-Gg: ATEYQzx7TSmoMrX7F2jTqnSea60Wy3pf8+Vw4c8vQS2GMtcNu0XOdUG/PjYacoreI4i
	V3S/AZQj83OOR9mqSy2d4JtU/ZkxcU2ft8K5EuZAEBt6Ofdws+leuc8TcPtXisCzCzGBEAQjxSl
	7FISZ19cCSLkLCtisoX/yZFZpSQjmJ3LA+m6O0nGH23IbxCGzXiI2Mr5SmcghxEzC5y9XxOK6SE
	olvIFdcLs9raDypMljsVNqiYrdrObvizVJeqw4HTYvkSrLoXeWWaKgFpQ+FCoebQ26o/3GLYGxs
	kDqkWw8eEJbo4apJANrusMWcuJuxe1lN0G405QIaYUd/6C6liCAn5iU2K/RX3J+c2VdJNT0L2uS
	8SEuyhYJQytxk7pgdK0iy+6EL7ZLfvO/jlp1jXhMjqrA6vI/D79wRW+/1hTxWdMqaiuyTkluXpo
	KInIjJmtKWEzBmRr0/guPca3TBsx6VLC4J1bc=
X-Received: by 2002:a05:6122:1d90:b0:567:fb8:c7ea with SMTP id 71dfb90a1353d-56a90a02e5amr7560039e0c.8.1772461905785;
        Mon, 02 Mar 2026 06:31:45 -0800 (PST)
X-Received: by 2002:a05:6122:1d90:b0:567:fb8:c7ea with SMTP id 71dfb90a1353d-56a90a02e5amr7559990e0c.8.1772461905278;
        Mon, 02 Mar 2026 06:31:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd238fsm1630119e87.11.2026.03.02.06.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:31:43 -0800 (PST)
Date: Mon, 2 Mar 2026 16:31:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_jingyw@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: monaco: Reserve full Gunyah metadata
 region
Message-ID: <3f4jhmdavfzp4mv3o3mw4ie2i3zvhvyvertpab37zxc6yluzyi@byem7vs7kv33>
References: <20260302142603.1113355-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260302142603.1113355-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 2IvCKuKk-lfpQQC-RBLNeQCxHT6Gc0bC
X-Proofpoint-GUID: 2IvCKuKk-lfpQQC-RBLNeQCxHT6Gc0bC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMiBTYWx0ZWRfX4Ldw/AmPI1Od
 MJWwF3EDVRg3A8lyoCX4/9dYyyEOYxbLIriocDgpzQt+p7ywEhWNNeIzCYZgVVqcBfIh+m79vr1
 8r9jIH8LrotFH3NljjFknp0/urA4S5k6G4i404unmrx+3dJmnLtLL4XMlCdsUzM6J44kuwIHTFY
 eIA8hq8DPI0tYG97hzMd8Na66R/KVQYqdA1uHmCsmD0MtSTyQKIwAL/F1a+RhOChTEwWvYuovTb
 wW+bp6+H7ROt/kvDMCAAXgK4jaqK4yUilSDb8fjxd51Mxw8t90icrCdpwl/udSAawGhZF291a/Y
 HdOhrBhgmNrKPHS5PtSr1KHeBBpDg7pspAXYQOZCB7/bKFDtwmXNQZqdg2mAeb2bc8JC4+gThK5
 o8g4iSaowiaMmlWJBqwvKbJTpdHetdxw7ogcsd8UOEFIXuw0YqSrNOTxM+0SiqezcvW9bHQeda8
 JqXESt3OBYqCBNgc2cw==
X-Authority-Analysis: v=2.4 cv=GLkF0+NK c=1 sm=1 tr=0 ts=69a59f52 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=ddBjuLbzpIDlxO-QRmcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020122
X-Rspamd-Queue-Id: 6DEBE1DB107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270058-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 03:26:03PM +0100, Loic Poulain wrote:
> We observe spurious "Synchronous External Abort" exceptions
> (ESR=0x96000010) and kernel crashes on Monaco-based platforms.
> These faults are caused by the kernel inadvertently accessing
> hypervisor-owned memory that is not properly marked as reserved.
> 
> From boot log, The Qualcomm hypervisor reports the memory range
> at 0x91a80000 of size 0x80000 (512 KiB) as hypervisor-owned:
> qhee_hyp_assign_remove_memory: 0x91a80000/0x80000 -> ret 0
> 
> However, the EFI memory map provided by firmware only reserves the
> subrange 0x91a40000–0x91a87fff (288 KiB). The remaining portion
> (0x91a88000–0x91afffff) is incorrectly reported as conventional
> memory (from efi debug):
> efi:   0x000091a40000-0x000091a87fff [Reserved...]
> efi:   0x000091a88000-0x0000938fffff [Conventional...]
> 
> As a result, the allocator may hand out PFNs inside the hypervisor
> owned region, causing fatal aborts when the kernel accesses those
> addresses.
> 
> Add a reserved-memory carveout for the Gunyah hypervisor metadata
> at 0x91a80000 (512 KiB) and mark it as no-map so Linux does not
> map or allocate from this area.
> 
> For the record:
> Hyp version: gunyah-e78adb36e debug (2025-11-17 05:38:05 UTC)
> UEFI Ver: 6.0.260122.BOOT.MXF.1.0.c1-00449-KODIAKLA-1
> 
> Fixes: 7be190e4bdd2 ("arm64: dts: qcom: add QCS8300 platform")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Interesting, will that fix some of the issues we observe in the CI?

-- 
With best wishes
Dmitry

